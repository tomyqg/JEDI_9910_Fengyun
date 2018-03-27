@echo off
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::make sure the compile option exists and load the compile option
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
if not exist freertos-config.cmd call freertos-setting.cmd
call freertos-config.cmd
set PROJECT_ORI_TYPE=%PROJECT_TYPE%
set PROJECT_ORI_PATH=%cd%
set UPDATE_NOR_PATH=%cd%\..\update_nor
set BOOTLOADER_NAME=%PROJECT_TYPE%_bootloader
set BOOTLOADER_PATH=%cd%\..\%BOOTLOADER_NAME%
call %PROJECT_ORI_PATH%\version.cmd

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::set PATH
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo -- SDK Version: %CUSTOMER_CODE%.%PROJECT_CODE%.%SDK_MAJOR_VERSION%.%SDK_MINOR_VERSION%.%BUILD_NUMBER%
set CMAKE_ROOT=%PROJECT_ORI_PATH%\..\..\tool
for /f "tokens=3 delims=() " %%a in ('find "CMAKE_FIND_ROOT_PATH " %PROJECT_ORI_PATH%\..\..\freertos\toolchain.cmake') do set toolchain=%%a
set toolchain=%toolchain:/=\%
set PATH=%CMAKE_ROOT%\bin;%toolchain%\bin;%PATH%

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::make sure the ntfs library exists. if not, get it from git server.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:begin_ntfs_3g
if /i "%CONFIG_HAVE_NTFS%"=="Y" (
    goto git_ntfs_3g
) else if /i "%CONFIG_HAVE_NTFS%"=="1" (
    goto git_ntfs_3g
) else (
    goto end_ntfs_3g
)
:git_ntfs_3g
if not exist %PROJECT_ORI_PATH%\.repos/ntfs-3g git clone -b master http://192.168.191.4:8442/git/.repos/ntfs-3g.git %PROJECT_ORI_PATH%\.repos/ntfs-3g
if exist %PROJECT_ORI_PATH%\.repos/ntfs-3g goto end_ntfs_3g
@echo Building process stopped - errors in cloning the ntfs-3g repository!!!
@pause
exit/b
:end_ntfs_3g

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::make sure the usbd library exists. if not, get it from git server.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:begin_usbd
if /i "%CONFIG_HAVE_USBD%"=="Y" (
    goto git_usbd
) else if /i "%CONFIG_HAVE_USBD%"=="1" (
    goto git_usbd
) else (
    goto end_usbd
)
:git_usbd
if not exist %PROJECT_ORI_PATH%\../../.repos/usbd git clone -b master http://192.168.191.4:8442/git/.repos/it9910-firmware-usbd.git %PROJECT_ORI_PATH%\../../.repos/usbd
if exist %PROJECT_ORI_PATH%\../../.repos/usbd goto end_usbd
@echo Building process stopped because of errors in cloning it9910-firmware-usbd.git!!!
@pause
exit/b
:end_usbd

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::build project
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
if not exist freertos mkdir freertos
cd freertos
if exist project\%PROJECT_TYPE%\jedi del project\%PROJECT_TYPE%\jedi
if exist project\%PROJECT_TYPE%\jedi.rom del project\%PROJECT_TYPE%\jedi.rom
cmake.exe -G"Unix Makefiles" -DHDMITX_TYPE=%HDMITX_TYPE% -DCONFIG_HAVE_NTFS=%CONFIG_HAVE_NTFS% -DCONFIG_USBD_HAVE_PCGRABBER=%CONFIG_USBD_HAVE_PCGRABBER% -DCONFIG_HAVE_USBD=%CONFIG_HAVE_USBD% -DUSE_WM8960_ADC=%USE_WM8960_ADC% -DSUPPORT_MIC_MIXED=%SUPPORT_MIC_MIXED% -DEXTERNAL_RTC=%EXTERNAL_RTC% -DUSB_DEVICE=%USB_DEVICE% -DUSB_STORAGE=%USB_STORAGE% -DSD_STORAGE=%SD_STORAGE% -DTSO_MODULE=%TSO_MODULE% -DEXTERNAL_HDMIRX=%EXTERNAL_HDMIRX% -DHDMI_LOOPTHROUGH=%HDMI_LOOPTHROUGH% -DCOMPONENT_DEV=%COMPONENT_DEV% -DHDCP_ON=%HDCP_ON% -DSENSOR_DEV=%SENSOR_DEV% -DSENSOR_ID=%SENSOR_ID% -DCHIP_VERSION=%CHIP_VERSION% -DCOMPOSITE_DEV=%COMPOSITE_DEV% -DCUSTOMER_CODE=%CUSTOMER_CODE% -DPROJECT_CODE=%PROJECT_CODE% -DSDK_MAJOR_VERSION=%SDK_MAJOR_VERSION% -DSDK_MINOR_VERSION=%SDK_MINOR_VERSION% -DBUILD_NUMBER=%BUILD_NUMBER% -DSMEDIA_PLATFORM=freertos -DSYSTEM_FAT_TYPE=%SYSTEM_FAT_TYPE% -DCMAKE_BUILD_TYPE=%CMAKE_BUILD_TYPE% -DPROJECT_TYPE=%PROJECT_TYPE% -DMULTIPLE_INSTANCES=%MULTIPLE_INSTANCES% -DBOARD_MODULE=%BOARD_MODULE% -DMENCODER=%MENCODER% -DCMAKE_TOOLCHAIN_FILE=%PROJECT_ORI_PATH%\..\..\freertos\toolchain.cmake %PROJECT_ORI_PATH%\..\..
rem make VERBOSE=1
set CYGWIN=nodosfilewarning
make -j 4

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::convert and copy audio codec
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
cd %PROJECT_ORI_PATH%
call copy_audio_codec.cmd

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::build project again to make sure the updated audio codec will be included in
::the final image
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
if not exist %PROJECT_ORI_PATH%\freertos\project\%PROJECT_ORI_TYPE%\jedi.rom goto end
cd %PROJECT_ORI_PATH%\freertos
make -j 4

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::build bootloader
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
if not exist %BOOTLOADER_PATH% goto end_bootloader
if not exist %BOOTLOADER_PATH%\freertos\project\%BOOTLOADER_NAME%\jedi.rom (
@echo bootloader_path: %BOOTLOADER_PATH%
cd %BOOTLOADER_PATH%
call freertos.cmd
cd %PROJECT_ORI_PATH%
)

copy %BOOTLOADER_PATH%\freertos\project\%BOOTLOADER_NAME%\jedi.rom %PROJECT_ORI_PATH%\freertos\project\%PROJECT_ORI_TYPE%\boot.rom
cd %PROJECT_ORI_PATH%\freertos\project\%PROJECT_ORI_TYPE%\
rem copy /y /b boot.rom+jedi.rom temp.rom
..\..\..\..\..\tool\bin\romversion.exe boot.rom 0x4
rem
rem CAUTION!
rem add 1 to the latest number (behind boot.rom) to update bootloader
rem MUST clean build
rem
..\..\..\..\..\tool\bin\concate.exe boot.rom jedi.rom temp.rom
if exist jedi_backup.rom (
del jedi_backup.rom
)
ren jedi.rom jedi_backup.rom
ren temp.rom jedi.rom

if not exist jedi.rom goto end
:end_bootloader

if not exist %UPDATE_NOR_PATH%\freertos\project\update_nor\jedi.bin (
@echo update_nor_path: %UPDATE_NOR_PATH%
copy %PROJECT_ORI_PATH%\updatenor-config.cmd %UPDATE_NOR_PATH%\freertos-config.cmd
cd %UPDATE_NOR_PATH%
call freertos.cmd
cd %PROJECT_ORI_PATH%
)

copy %UPDATE_NOR_PATH%\freertos\project\update_nor\jedi.bin %PROJECT_ORI_PATH%\freertos\project\%PROJECT_ORI_TYPE%\update_nor.bin
cd %PROJECT_ORI_PATH%\freertos\project\%PROJECT_ORI_TYPE%\
merge_upate_nor_bin update_nor.bin jedi.rom update_rom.bin

cd ..\..\..\..\
fill_img_project_identifier.exe -in %PROJECT_ORI_PATH%\version.cmd -ref %PROJECT_ORI_TYPE%\freertos\project\%PROJECT_ORI_TYPE%\jedi.rom -out %PROJECT_ORI_TYPE%\freertos\project\%PROJECT_ORI_TYPE%\jedi.img

:end
@if not defined NO_PAUSE pause
