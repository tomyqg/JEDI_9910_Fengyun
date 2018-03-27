for %%* in (.) do set PROJECT_TYPE=%%~nx*

set CMAKE_BUILD_TYPE=RELEASE
set SYSTEM_FAT_TYPE=HAVE_FAT
set USB_DEVICE=ENABLE
set USB_STORAGE=ENABLE
set SD_STORAGE=DISABLE
set TSO_MODULE=DISABLE
set EXTERNAL_HDMIRX=DISABLE
set COMPONENT_DEV=ENABLE
set COMPOSITE_DEV=DISABLE
set HDMI_LOOPTHROUGH=ENABLE
set MULTIPLE_INSTANCES=DISABLE
set SENSOR_DEV=DISABLE
set SENSOR_ID=NONE
set CHIP_VERSION=IT9919_144TQFP
set BOARD_MODULE=REF_BOARD_AVSENDER
set HDCP_ON=ENABLE
set CONFIG_USBD_HAVE_PCGRABBER=1
set CONFIG_HAVE_NTFS=1
set CONFIG_HAVE_USBD=1
set EXTERNAL_RTC=ENABLE
set SUPPORT_MIC_MIXED=ENABLE
set USE_WM8960_ADC=ENABLE
set MENCODER=ENABLE
set HDMITX_TYPE=IT6613
