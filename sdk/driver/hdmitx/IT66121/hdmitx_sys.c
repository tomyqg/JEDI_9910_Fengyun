///*****************************************
//  Copyright (C) 2009-2014
//  ITE Tech. Inc. All Rights Reserved
//  Proprietary and Confidential
///*****************************************
//   @file   <hdmitx_sys.c>
//   @author Jau-Chih.Tseng@ite.com.tw
//   @date   2011/07/19
//   @fileversion: ITE_HDMITX_SAMPLE_2.03
//******************************************/

///////////////////////////////////////////////////////////////////////////////
// This is the sample program for CAT6611 driver usage.
///////////////////////////////////////////////////////////////////////////////
#include "hdmitx/typedef.h"
#include "hdmitx/hdmitx.h"
#include "hdmitx/hdmitx_drv.h"
#include "hdmitx/hdmitx_sys.h"
#include "hdmitx/debug.h"
#include "mmp_types.h"
#include "mmp_iic.h"


#define PARSE_EDID

#define INPUT_SIGNAL_TYPE 0 // 24 bit sync seperate
//#define INPUT_SIGNAL_TYPE ( T_MODE_DEGEN )
//#define INPUT_SIGNAL_TYPE ( T_MODE_INDDR)
//#define INPUT_SIGNAL_TYPE ( T_MODE_SYNCEMB)
//#define INPUT_SIGNAL_TYPE ( T_MODE_CCIR656 | T_MODE_SYNCEMB )
#define I2S 0
#define SPDIF 1
#define INPUT_SAMPLE_FREQ AUDFS_48KHz
#define OUTPUT_CHANNEL 2

static VIDEO_Timing VTiming;
static unsigned int preAudioNum = 0xFF;
static unsigned int preAudioRate = 0xFF;
static BOOL EnSPDIFIn = FALSE;
static TXInput_Device gtInputDevice = TXIN_HDMIRX;

#define IT6613_IICADDR (0x98 >> 1)

INSTANCE InstanceData =
{
    0,      // BYTE I2C_DEV ;
    (IT6613_IICADDR << 1),    // BYTE I2C_ADDR ;

    /////////////////////////////////////////////////
    // Interrupt Type
    /////////////////////////////////////////////////
    0x40,      // BYTE bIntType ; // = 0 ;
    /////////////////////////////////////////////////
    // Video Property
    /////////////////////////////////////////////////
    INPUT_SIGNAL_TYPE ,// BYTE bInputVideoSignalType ; // for Sync Embedded,CCIR656,InputDDR

    /////////////////////////////////////////////////
    // Audio Property
    /////////////////////////////////////////////////
    I2S, // BYTE bOutputAudioMode ; // = 0 ;
    FALSE , // BYTE bAudioChannelSwap ; // = 0 ;
    0x01, // BYTE bAudioChannelEnable ;
    AUDFS_48KHz ,// BYTE bAudFs ;
    0, // unsigned long TMDSClock ;
    FALSE, // BYTE bAuthenticated:1 ;
    FALSE, // BYTE bHDMIMode: 1;
    FALSE, // BYTE bIntPOL:1 ; // 0 = Low Active
    FALSE, // BYTE bHPD:1 ;
};

////////////////////////////////////////////////////////////////////////////////
// EDID
////////////////////////////////////////////////////////////////////////////////
#ifndef PARSE_EDID
static _XDATA unsigned char EDID_Buf_block0[128] = {
0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x26, 0x85, 0x13, 0x79, 0x45, 0x54, 0x00, 0x00,
0x24, 0x13, 0x01, 0x03, 0x80, 0x30, 0x1b, 0x78, 0x2e, 0xee, 0x95, 0xa3, 0x54, 0x4c, 0x99, 0x26,
0x0f, 0x50, 0x54, 0x21, 0x08, 0x00, 0xb3, 0x00, 0x81, 0xc0, 0x81, 0x40, 0x81, 0x80, 0x01, 0x00,
0x95, 0x00, 0x8b, 0xc0, 0xd1, 0xc0, 0x02, 0x3a, 0x80, 0x18, 0x71, 0x38, 0x2d, 0x40, 0x58, 0x2c,
0x45, 0x00, 0xdd, 0x0c, 0x11, 0x00, 0x00, 0x1e, 0x00, 0x00, 0x00, 0xfd, 0x00, 0x32, 0x4c, 0x18,
0x53, 0x15, 0x00, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x00, 0x00, 0x00, 0xfc, 0x00, 0x49,
0x54, 0x45, 0x2e, 0x20, 0x45, 0x32, 0x32, 0x32, 0x30, 0x48, 0x44, 0x0a, 0x00, 0x00, 0x00, 0xff,
0x00, 0x33, 0x39, 0x39, 0x30, 0x34, 0x39, 0x37, 0x37, 0x30, 0x31, 0x39, 0x0a, 0x20, 0x01, 0x30 };

static _XDATA unsigned char EDID_Buf_block1[128] = {
0x02, 0x03, 0x25, 0x71, 0x50, 0x10, 0x05, 0x84, 0x13, 0x03, 0x12, 0x07, 0x16, 0x01, 0x14, 0x15,
0x1f, 0x06, 0x20, 0x21, 0x22, 0x23, 0x09, 0x07, 0x07, 0x83, 0x01, 0x00, 0x00, 0x67, 0x03, 0x0c,
0x00, 0x10, 0x00, 0x38, 0x2d, 0x8c, 0x0a, 0xd0, 0x8a, 0x20, 0xe0, 0x2d, 0x10, 0x10, 0x3e, 0x96,
0x00, 0xe0, 0x0e, 0x11, 0x00, 0x00, 0x18, 0x01, 0x1d, 0x00, 0x72, 0x51, 0xd0, 0x1e, 0x20, 0x6e,
0x28, 0x55, 0x00, 0xe0, 0x0e, 0x11, 0x00, 0x00, 0x1e, 0x01, 0x1d, 0x00, 0xbc, 0x52, 0xd0, 0x1e,
0x20, 0xb8, 0x28, 0x55, 0x40, 0xe0, 0x0e, 0x11, 0x00, 0x00, 0x1e, 0x8c, 0x0a, 0xd0, 0x90, 0x20,
0x40, 0x31, 0x20, 0x0c, 0x40, 0x55, 0x00, 0xe0, 0x0e, 0x11, 0x00, 0x00, 0x18, 0x8c, 0x0a, 0xa0,
0x20, 0x51, 0x20, 0x18, 0x10, 0x18, 0x7e, 0x23, 0x00, 0xe0, 0x0e, 0x11, 0x00, 0x00, 0x98, 0x53};

#endif

static _XDATA unsigned char EDID_Buf[128] ;
static RX_CAP _XDATA RxCapability ;
static BOOL bChangeMode = FALSE ;
_IDATA AVI_InfoFrame AviInfo;
_IDATA Audio_InfoFrame AudioInfo ;

////////////////////////////////////////////////////////////////////////////////
// Program utility.
////////////////////////////////////////////////////////////////////////////////
BYTE ParseEDID();
static BOOL ParseCEAEDID(BYTE *pCEAEDID);
void ConfigAVIInfoFrame(BYTE VIC, BYTE pixelrep);
void ConfigAudioInfoFrm();
void Config_GeneralPurpose_Infoframe(BYTE *p3DInfoFrame);

_IDATA BYTE bInputColorMode = F_MODE_RGB444;
_IDATA BYTE bOutputColorMode = F_MODE_RGB444;
_XDATA BYTE bOutputColorDepth = 24;

_IDATA BYTE bEnableHDCP = 0;

_IDATA BYTE iVideoModeSelect=0 ;

_XDATA ULONG VideoPixelClock ;
_XDATA BYTE gtVIC ; // 480p60
static MODE_ID gtVesaID;
_XDATA BYTE pixelrep ; // no pixelrepeating
_XDATA HDMI_Aspec aspec ;
_XDATA HDMI_Colorimetry Colorimetry ;

_XDATA BYTE bAudioSampleFreq = INPUT_SAMPLE_FREQ ;
BOOL bHDMIMode, bAudioEnable ;

////////////////////////////////////////////////////////////////////////////////
// Function Body.
////////////////////////////////////////////////////////////////////////////////

BYTE HPDStatus = FALSE, HPDChangeStatus = FALSE;


void InitHDMITX_Instance(TXInput_Device inputDevice)
{
    switch (inputDevice)
    {
        case TXIN_HDMIRX:
            InstanceData.bInputVideoSignalType = 0;
#ifdef IT9913_128LQFP
            bInputColorMode = F_MODE_YUV422;
#else
            bInputColorMode = F_MODE_RGB444;
#endif
            break;

        case TXIN_CVBS:
            InstanceData.bInputVideoSignalType = T_MODE_CCIR656 |T_MODE_DEGEN;
            bInputColorMode = F_MODE_YUV422;
            break;

        case TXIN_YPBPR:
            InstanceData.bInputVideoSignalType = 0;
#ifdef IT9913_128LQFP
            bInputColorMode = F_MODE_YUV422;
#else
            bInputColorMode = F_MODE_YUV444;
#endif
            break;
        default:
            break;
    }

    gtInputDevice = inputDevice;

    HDMITX_InitInstance(&InstanceData);
    InitHDMITX();

    HPDStatus = FALSE;
    HPDChangeStatus = FALSE;

#ifndef PARSE_EDID
    ParseEDID();
#endif

}

void
HDMITX_SetOutput(unsigned int AudioSampleRate, unsigned int AudioChannelNum, unsigned int inputDevice)
{
    MMP_UINT32 id, i;
    VIDEOPCLKLEVEL level ;
    unsigned long TMDSClock = VideoPixelClock*(pixelrep+1);
    MMP_BOOL hdcp_done = MMP_FALSE;

    DisableAudioOutput();

    if( TMDSClock>80000000 )
    {
        level = PCLK_HIGH ;
    }
    else if(TMDSClock>20000000)
    {
        level = PCLK_MEDIUM ;
    }
    else
    {
        level = PCLK_LOW ;
    }

    if(RxCapability.dc.uc & (HDMI_DC_SUPPORT_36|HDMI_DC_SUPPORT_30))
    {
        //SetOutputColorDepthPhase(bOutputColorDepth,0);
    }
    else
    {
        bOutputColorDepth = B_CD_NODEF;
    }
    SetOutputColorDepthPhase(bOutputColorDepth,0);

    SetupVideoInputSignal(InstanceData.bInputVideoSignalType);

	#ifdef SUPPORT_DEGEN
    if (gtVIC != HDMI_Unkown)
    {
        switch (gtVIC)
        {
            case HDMI_480i60: id = CEA_720x480i60; break;
            case HDMI_480p60: id = CEA_720x480p60; break;
            case HDMI_576i50: id = CEA_720x576i50; break;
            case HDMI_576p50: id = CEA_720x576p50; break;
            case HDMI_720p60: id = CEA_1280x720p60; break;
            case HDMI_720p50: id = CEA_1280x720p50; break;
            case HDMI_1080p60: id = CEA_1920x1080p60; break;
            case HDMI_1080p50: id = CEA_1920x1080p50; break;
            case HDMI_1080i60: id = CEA_1920x1080i60; break;
            case HDMI_1080i50: id = CEA_1920x1080i50; break;
            case HDMI_1080p24: id = CEA_1920x1080p24; break;
            case HDMI_640x480p60: id = CEA_640x480p60; break;
            case HDMI_1080p25: id = CEA_1920x1080p25; break;
            case HDMI_1080p30: id = CEA_1920x1080p30; break;
            default: id = HDMI_640x480p60; break;
        }
    }
    else
    {
        id = gtVesaID;
    }
    printf("de gen %d,type =%d,device =%d\r\n",id,InstanceData.bInputVideoSignalType,inputDevice);
   if(inputDevice == TXIN_YPBPR || inputDevice == TXIN_CVBS) //kenny0518
   	{
   	   printf("IT66121 DE gen\r\n");
          ProgramDEGenModeByID(id, InstanceData.bInputVideoSignalType | T_MODE_DEGEN, inputDevice);
   	}
	#endif
    #ifdef SUPPORT_SYNCEMBEDDED
    if(InstanceData.bInputVideoSignalType & T_MODE_SYNCEMB)
    {
        if( gtVIC != 0  )
        {
            ProgramSyncEmbeddedByVIC(gtVIC,InstanceData.bInputVideoSignalType);
        }
        else
        {
            ProgramSyncEmbeddedByTiming(&VTiming,InstanceData.bInputVideoSignalType);
        }

    }
    #endif

    EnableVideoOutput(level,bInputColorMode,bOutputColorMode ,bHDMIMode);



    if( bHDMIMode )
    {
        ConfigAVIInfoFrame(gtVIC, pixelrep);

        //EnableHDCP(TRUE);
        if( bAudioEnable )
        {
            //EnableAudioOutput(TMDSClock, bAudioSampleFreq, OUTPUT_CHANNEL,24, FALSE);
#ifdef SUPPORT_HBR_AUDIO
            EnableHDMIAudio(T_AUDIO_HBR, FALSE, 768000L,OUTPUT_CHANNEL,NULL,TMDSClock);
#else
            EnableHDMIAudio(T_AUDIO_LPCM, EnSPDIFIn, (ULONG)AudioSampleRate, (BYTE)AudioChannelNum, NULL, TMDSClock);
#endif
            ConfigAudioInfoFrm();
        }
    }
    else
    {
        EnableAVIInfoFrame(FALSE ,NULL);
    }

    SetAVMute(TRUE);

    for (i = 0; i < 3; i++)
    {
        hdcp_done = EnableHDCP(bEnableHDCP);
        if (hdcp_done)
        {
            SetAVMute(FALSE);
            bChangeMode = FALSE;
            break;
        }
    }
    if (!hdcp_done)
        printf("-----HDCP fail-----\n");

	bChangeMode = FALSE;

   if(gtInputDevice == TXIN_CVBS)
   	{
       HDMITX_WriteI2C_Byte(0x72, 0x40);  //kennydeng patch cvbs
     //  HDMITX_WriteI2C_Byte(0xBF, 0x08);  //kennydeng patch cvbs       
   	}

//	DumpHDMITXReg();  //debug kenny
}


void
HDMITX_DevLoopProc(unsigned char bHDMIRxModeChange, unsigned int AudioSampleRate, unsigned int AudioChannelNum,
                    TXInput_Device inputDevice)
{
    CheckHDMITX(&HPDStatus,&HPDChangeStatus);
	
	if( HPDChangeStatus )
    {
        if( HPDStatus )
        {
            HDMITX_PowerOn();
            ParseEDID();
            bOutputColorMode = F_MODE_RGB444;

			if( RxCapability.ValidHDMI )
			{
				bHDMIMode = TRUE ;
				printf("RxCapability.VideoMode = %x\r\n",RxCapability.VideoMode);
				if(RxCapability.VideoMode & (1<<6))
				{
					bAudioEnable = TRUE ;
				}
				/* from JJ's mail: 2012-04-30 16:53, for 7-24 CDF form, RGB/YUV issue */
				if( RxCapability.VideoMode & (1<<5))
				{
					bOutputColorMode &= ~F_MODE_CLRMOD_MASK ;
					bOutputColorMode |= F_MODE_YUV444;
					printf("output YUV444\r\n");
				}
				else if (RxCapability.VideoMode & (1<<4))
				{
					bOutputColorMode &= ~F_MODE_CLRMOD_MASK ;
					bOutputColorMode |= F_MODE_YUV422 ;
				       printf("output YUV422\r\n");
				}
			}
			else
			{
				bHDMIMode = FALSE ;
				bAudioEnable = FALSE ;
				bOutputColorDepth = B_CD_NODEF;
                //DisableAudioOutput();
                //DisableVideoOutput();
            #ifdef SUPPORT_HDCP
                EnableHDCP(FALSE);
            #endif
			}
            bChangeMode=TRUE;
			

        }
        else
        {
            // unplug mode, ...
    		HDMITX_DEBUG_PRINTF(("HPD OFF HDMITX_DisableVideoOutput()\n"));
            DisableVideoOutput();
            HDMITX_PowerDown();
        }
    }
    else // no stable but need to process mode change procedure
    {
        if(HPDStatus)
        {
            if(bChangeMode)
            {
        		HDMITX_DEBUG_PRINTF(("Mode change HDMITX_SetOutput();\n"));
                HDMITX_SetOutput(AudioSampleRate, AudioChannelNum, inputDevice);
                // HDMITX_EnableHDCP(TRUE);

                bChangeMode = FALSE ;
            }
            if(getHDMITX_LinkStatus())
            {
                // AudioModeDetect();
                #ifdef SUPPORT_HDCP
                if((getHDMITX_AuthenticationDone() == FALSE) &&(gtInputDevice == TXIN_HDMIRX)) //kenny
	          	{
                      EnableHDCP(TRUE);	//my.wei disable
                      SetAVMute(FALSE);//my.wei disable
            	    }                
                #endif
            }
			#ifdef HDMITX_DEBUG_INFO
			// HDMITX_DEBUG_PRINTF(("PCLK = %ld\n",CalcPCLK()));
			#endif
        }
    }
}

void
HDMITX_ChangeDisplayOption(HDMI_Video_Type OutputVideoTiming, MODE_ID VesaTiming, unsigned int EnableHDCP, BOOL IsYUVInput)
{
    HDMI_OutputColorMode OutputColorMode;
    MMP_BOOL invCLK;

    invCLK = MMP_FALSE;
	
    if (gtInputDevice == TXIN_HDMIRX)
    {
        if (IsYUVInput)
        {
#ifdef IT9913_128LQFP
            bInputColorMode = F_MODE_YUV422;
#else
            bInputColorMode = F_MODE_YUV444;
#endif
            bOutputColorMode = bOutputColorMode | F_MODE_YUV444;
            OutputColorMode=F_MODE_YUV444;
        }
        else
        {
            bInputColorMode = F_MODE_RGB444;
            bOutputColorMode = bOutputColorMode | F_MODE_RGB444;
            OutputColorMode=F_MODE_RGB444;
        }
    }
    else
    {
       //HDMI_Video_Type  t=HDMI_480i60_16x9;
        if((F_MODE_RGB444)==(bOutputColorMode&F_MODE_CLRMOD_MASK))//Force output RGB in RGB only case
        {
            OutputColorMode=F_MODE_RGB444;
        }
        else if ((F_MODE_YUV422)==(bOutputColorMode&F_MODE_CLRMOD_MASK))//YUV422 only
        {
            //if(OutputColorMode==HDMI_YUV444){OutputColorMode=F_MODE_YUV422;}
            OutputColorMode=F_MODE_YUV422;
        }
        else if ((F_MODE_YUV444)==(bOutputColorMode&F_MODE_CLRMOD_MASK))//YUV444 only
        {
            //if(OutputColorMode==HDMI_YUV422){OutputColorMode=F_MODE_YUV444;}
            OutputColorMode=F_MODE_YUV444;
        }
    }

    bEnableHDCP = EnableHDCP;

    gtVesaID = VesaTiming;

    switch(OutputVideoTiming)
    {
    case HDMI_640x480p60:
        gtVIC = HDMI_640x480p60;
        VideoPixelClock = 25000000 ;
        pixelrep = 0 ;
        aspec = HDMI_4x3 ;
        Colorimetry = HDMI_ITU601 ;
        break ;
    case HDMI_480p60:
        gtVIC = HDMI_480p60;
        VideoPixelClock = 27000000 ;
        pixelrep = 0 ;
        aspec = HDMI_4x3 ;
        Colorimetry = HDMI_ITU601 ;
        break ;
    case HDMI_480p60_16x9:
        gtVIC = HDMI_480p60_16x9;
        VideoPixelClock = 27000000 ;
        pixelrep = 0 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU601 ;
        break ;
    case HDMI_720p60:
        gtVIC = HDMI_720p60;
        VideoPixelClock = 74250000 ;
        pixelrep = 0 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU709 ;
	invCLK = MMP_TRUE;
        break ;
    case HDMI_1080i60:
        gtVIC = HDMI_1080i60;
        VideoPixelClock = 74250000 ;
        pixelrep = 0 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU709 ;
	invCLK = MMP_TRUE;	
        break ;
    case HDMI_480i60:
        gtVIC = HDMI_480i60;
        VideoPixelClock = 13500000 ;
        pixelrep = 1 ;
        aspec = HDMI_4x3 ;
        Colorimetry = HDMI_ITU601 ;
        break ;
    case HDMI_480i60_16x9:
        gtVIC = HDMI_480i60_16x9;
        VideoPixelClock = 13500000 ;
        pixelrep = 1 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU601 ;
        break ;
    case HDMI_1080p60:
        gtVIC = HDMI_1080p60;
        VideoPixelClock = 148500000 ;
        pixelrep = 0 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU709 ;
	//invCLK = MMP_TRUE;	
        break ;
    case HDMI_576p50:
        gtVIC = HDMI_576p50;
        VideoPixelClock = 27000000 ;
        pixelrep = 0 ;
        aspec = HDMI_4x3 ;
        Colorimetry = HDMI_ITU601 ;
        break ;
    case HDMI_576p50_16x9:
        gtVIC = HDMI_576p50_16x9;
        VideoPixelClock = 27000000 ;
        pixelrep = 0 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU601 ;
        break ;
    case HDMI_720p50:
        gtVIC = HDMI_720p50;
        VideoPixelClock = 74250000 ;
        pixelrep = 0 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU709 ;
	invCLK = MMP_TRUE;	
        break ;
    case HDMI_1080i50:
        gtVIC = HDMI_1080i50;
        VideoPixelClock = 74250000 ;
        pixelrep = 0 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU709 ;
	invCLK = MMP_TRUE;	
        break ;
    case HDMI_576i50:
        gtVIC = HDMI_576i50;
        VideoPixelClock = 13500000 ;
        pixelrep = 1 ;
        aspec = HDMI_4x3 ;
        Colorimetry = HDMI_ITU601 ;
        break ;
    case HDMI_576i50_16x9:
        gtVIC = HDMI_576i50_16x9;
        VideoPixelClock = 13500000 ;
        pixelrep = 1 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU601 ;
        break ;
    case HDMI_1080p50:
        gtVIC = HDMI_1080p50;
        VideoPixelClock = 148500000 ;
        pixelrep = 0 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU709 ;
//	invCLK = MMP_TRUE;	
        break ;
    case HDMI_1080p24:
        gtVIC = HDMI_1080p24;
        VideoPixelClock = 74250000 ;
        pixelrep = 0 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU709 ;
//	invCLK = MMP_TRUE;	
        break ;
    case HDMI_1080p25:
        gtVIC = HDMI_1080p25;
        VideoPixelClock = 74250000 ;
        pixelrep = 0 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU709 ;
//	invCLK = MMP_TRUE;	
        break ;
    case HDMI_1080p30:
        gtVIC = HDMI_1080p30;
        VideoPixelClock = 74250000 ;
        pixelrep = 0 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU709 ;
//	invCLK = MMP_TRUE;	
        break ;

    case HDMI_720p30:
        gtVIC = HDMI_720p30;
        VideoPixelClock = 74250000 ;
        pixelrep = 0 ;
        aspec = HDMI_16x9 ;
        Colorimetry = HDMI_ITU709 ;

    #ifdef SUPPORT_SYNCEMBEDDED
        VTiming.HActive=1280 ;
        VTiming.VActive=720 ;
        VTiming.HTotal=3300 ;
        VTiming.VTotal=750 ;
        VTiming.PCLK=VideoPixelClock ;
        VTiming.xCnt=0x2E ;
        VTiming.HFrontPorch= 1760;
        VTiming.HSyncWidth= 40 ;
        VTiming.HBackPorch= 220 ;
        VTiming.VFrontPorch= 5;
        VTiming.VSyncWidth= 5 ;
        VTiming.VBackPorch= 20 ;
        VTiming.ScanMode=PROG ;
        VTiming.VPolarity=Vneg ;
        VTiming.HPolarity=Hneg ;

    #endif
        break ;

    case HDMI_VESA:
        gtVIC = HDMI_Unkown;
        VideoPixelClock = 148500000;
        Colorimetry = HDMI_ITU601;
        pixelrep = 0;
        break;

    default:
        gtVIC = HDMI_Unkown;
        bChangeMode = FALSE ;
        return ;
    }

    switch(OutputColorMode)
    {
    case HDMI_YUV444:
        bOutputColorMode = F_MODE_YUV444 ;
        break ;
    case HDMI_YUV422:
        bOutputColorMode = F_MODE_YUV422 ;
        break ;
    case HDMI_RGB444:
    default:
        bOutputColorMode = F_MODE_RGB444 ;
        break ;
    }

    if( Colorimetry == HDMI_ITU709 )
    {
        bInputColorMode |= F_MODE_ITU709 ;
    }
    else
    {
        bInputColorMode &= ~F_MODE_ITU709 ;
    }

    if (OutputVideoTiming != HDMI_640x480p60 && OutputVideoTiming != HDMI_VESA)
    {
        bInputColorMode |= F_MODE_16_235 ;
    }
    else
    {
        bInputColorMode &= ~F_MODE_16_235 ;
    }
    printf("change display timing=%d,vic=%d, inputcolor =%d,outpurtcolor =%d\r\n",OutputVideoTiming,gtVIC,bInputColorMode,bOutputColorMode);

if(gtInputDevice == TXIN_HDMIRX)
{
     if(invCLK)
     {
     	 BYTE uc;
    	  	uc = HDMITX_ReadI2C_Byte(REG_TX_CLK_CTRL1);
      	printf("clk 0x59 =%x\r\n",uc);  
     	 if(!(uc&B_VDO_LATCH_EDGE))
     	 {
      		uc |= B_VDO_LATCH_EDGE ;
      		HDMITX_WriteI2C_Byte(REG_TX_CLK_CTRL1, uc);
      	 	printf("invert 0 0x59 =%x\r\n",HDMITX_ReadI2C_Byte(REG_TX_CLK_CTRL1));
    		  }
   	}
    else
    {
           BYTE uc;
          uc = HDMITX_ReadI2C_Byte(REG_TX_CLK_CTRL1);   
          uc &= ~B_VDO_LATCH_EDGE ;
          HDMITX_WriteI2C_Byte(REG_TX_CLK_CTRL1, uc);
          printf("normal 0  0x59 =%x\r\n",HDMITX_ReadI2C_Byte(REG_TX_CLK_CTRL1));      
    }
}

   if(gtInputDevice == TXIN_YPBPR || gtInputDevice == TXIN_CVBS)
   {
     if(1)
     {
     	 BYTE uc;
    	  	uc = HDMITX_ReadI2C_Byte(REG_TX_CLK_CTRL1);
      	printf("clk 0x59 =%x\r\n",uc);  
     	 if(!(uc&B_VDO_LATCH_EDGE))
     	 {
      		uc |= B_VDO_LATCH_EDGE ;
      		HDMITX_WriteI2C_Byte(REG_TX_CLK_CTRL1, uc);
      	 	printf("invert 0 0x59 =%x\r\n",HDMITX_ReadI2C_Byte(REG_TX_CLK_CTRL1));
    	}
   	}
    else
    {
           BYTE uc;
          uc = HDMITX_ReadI2C_Byte(REG_TX_CLK_CTRL1);   
          uc &= ~B_VDO_LATCH_EDGE ;
          HDMITX_WriteI2C_Byte(REG_TX_CLK_CTRL1, uc);
          printf("normal 0  0x59 =%x\r\n",HDMITX_ReadI2C_Byte(REG_TX_CLK_CTRL1));      
    }
   }	
   
	//DumpHDMITXReg();  //debug kenny
    bChangeMode = TRUE ;
}


void
ConfigAVIInfoFrame(BYTE VIC, BYTE pixelrep)
{
//     AVI_InfoFrame AviInfo;

    AviInfo.pktbyte.AVI_HB[0] = AVI_INFOFRAME_TYPE|0x80 ;
    AviInfo.pktbyte.AVI_HB[1] = AVI_INFOFRAME_VER ;
    AviInfo.pktbyte.AVI_HB[2] = AVI_INFOFRAME_LEN ;

    switch(bOutputColorMode)
    {
    case F_MODE_YUV444:
        // AviInfo.info.ColorMode = 2 ;
        AviInfo.pktbyte.AVI_DB[0] = (2<<5)|(1<<4);
        break ;
    case F_MODE_YUV422:
        // AviInfo.info.ColorMode = 1 ;
        AviInfo.pktbyte.AVI_DB[0] = (1<<5)|(1<<4);
        break ;
    case F_MODE_RGB444:
    default:
        // AviInfo.info.ColorMode = 0 ;
        AviInfo.pktbyte.AVI_DB[0] = (0<<5)|(1<<4);
        break ;
    }
    AviInfo.pktbyte.AVI_DB[1] = 8 ;
    AviInfo.pktbyte.AVI_DB[1] |= (aspec != HDMI_16x9)?(1<<4):(2<<4); // 4:3 or 16:9
    AviInfo.pktbyte.AVI_DB[1] |= (Colorimetry != HDMI_ITU709)?(1<<6):(2<<6); // 4:3 or 16:9
    AviInfo.pktbyte.AVI_DB[2] = 0 ;
    AviInfo.pktbyte.AVI_DB[3] = VIC ;
    AviInfo.pktbyte.AVI_DB[4] =  pixelrep & 3 ;
    AviInfo.pktbyte.AVI_DB[5] = 0 ;
    AviInfo.pktbyte.AVI_DB[6] = 0 ;
    AviInfo.pktbyte.AVI_DB[7] = 0 ;
    AviInfo.pktbyte.AVI_DB[8] = 0 ;
    AviInfo.pktbyte.AVI_DB[9] = 0 ;
    AviInfo.pktbyte.AVI_DB[10] = 0 ;
    AviInfo.pktbyte.AVI_DB[11] = 0 ;
    AviInfo.pktbyte.AVI_DB[12] = 0 ;

    EnableAVIInfoFrame(TRUE, (unsigned char *)&AviInfo);
}



////////////////////////////////////////////////////////////////////////////////
// Function: ConfigAudioInfoFrm
// Parameter: NumChannel, number from 1 to 8
// Return: ER_SUCCESS for successfull.
// Remark: Evaluate. The speakerplacement is only for reference.
//         For production, the caller of SetAudioInfoFrame should program
//         Speaker placement by actual status.
// Side-Effect:
////////////////////////////////////////////////////////////////////////////////

void
ConfigAudioInfoFrm()
{
    int i ;
    HDMITX_DEBUG_PRINTF(("ConfigAudioInfoFrm(%d)\n",2));

    AudioInfo.pktbyte.AUD_HB[0] = AUDIO_INFOFRAME_TYPE ;
    AudioInfo.pktbyte.AUD_HB[1] = 1 ;
    AudioInfo.pktbyte.AUD_HB[2] = AUDIO_INFOFRAME_LEN ;
    AudioInfo.pktbyte.AUD_DB[0] = 1 ;
    for( i = 1 ;i < AUDIO_INFOFRAME_LEN ; i++ )
    {
        AudioInfo.pktbyte.AUD_DB[i] = 0 ;
    }
    EnableAudioInfoFrame(TRUE, (unsigned char *)&AudioInfo);
}



/////////////////////////////////////////////////////////////////////
// ParseEDID()
// Check EDID check sum and EDID 1.3 extended segment.
/////////////////////////////////////////////////////////////////////
BYTE
ParseEDID()
{
    // collect the EDID ucdata of segment 0
    BYTE CheckSum ;
    BYTE BlockCount ;
    BYTE err ;
    BYTE bValidCEA = FALSE ;
    int i ;

    RxCapability.ValidCEA = FALSE ;
    RxCapability.ValidHDMI = FALSE ;
    RxCapability.dc.uc = 0;

#ifdef PARSE_EDID
    GetEDIDData(0, EDID_Buf);
#else
    memcpy(EDID_Buf, EDID_Buf_block0, 128);
#endif
    for( i = 0, CheckSum = 0 ; i < 128 ; i++ )
    {
        CheckSum += EDID_Buf[i] ; CheckSum &= 0xFF ;
    }

            //Eep_Write(0x80, 0x80, EDID_Buf);
    if( CheckSum != 0 )
    {
        return FALSE ;
    }

    if( EDID_Buf[0] != 0x00 ||
        EDID_Buf[1] != 0xFF ||
        EDID_Buf[2] != 0xFF ||
        EDID_Buf[3] != 0xFF ||
        EDID_Buf[4] != 0xFF ||
        EDID_Buf[5] != 0xFF ||
        EDID_Buf[6] != 0xFF ||
        EDID_Buf[7] != 0x00)
    {
        return FALSE ;
    }


    BlockCount = EDID_Buf[0x7E] ;

    if( BlockCount == 0 )
    {
        return TRUE ; // do nothing.
    }
    else if ( BlockCount > 4 )
    {
        BlockCount = 4 ;
    }

     // read all segment for test
    for( i = 1 ; i <= BlockCount ; i++ )
    {
#ifdef PARSE_EDID
        err = GetEDIDData(i, EDID_Buf);
#else
        memcpy(EDID_Buf, EDID_Buf_block1, 128);
        err = TRUE;
#endif


        if( err )
        {
           if( !bValidCEA && EDID_Buf[0] == 0x2 && EDID_Buf[1] == 0x3 )
            {
                err = ParseCEAEDID(EDID_Buf);
                if( err )
                {

                    if(RxCapability.IEEEOUI==0x0c03)
                    {
                        RxCapability.ValidHDMI = TRUE ;
                        bValidCEA = TRUE ;
                    }
                    else
                    {
                        RxCapability.ValidHDMI = FALSE ;
                    }

                }
            }
        }
    }

    return err ;

}

static BOOL
ParseCEAEDID(BYTE *pCEAEDID)
{
    BYTE offset,End ;
    BYTE count ;
    BYTE tag ;
    int i ;

    if( pCEAEDID[0] != 0x02 || pCEAEDID[1] != 0x03 ) return ER_SUCCESS ; // not a CEA BLOCK.
    End = pCEAEDID[2]  ; // CEA description.
    RxCapability.VideoMode = pCEAEDID[3] ;

    RxCapability.VDOModeCount = 0 ;
    RxCapability.idxNativeVDOMode = 0xff ;

    for( offset = 4 ; offset < End ; )
    {
        tag = pCEAEDID[offset] >> 5 ;
        count = pCEAEDID[offset] & 0x1f ;
        switch( tag )
        {
        case 0x01: // Audio Data Block ;
            RxCapability.AUDDesCount = count/3 ;
            offset++ ;
            for( i = 0 ; i < RxCapability.AUDDesCount ; i++ )
            {
                RxCapability.AUDDes[i].uc[0] = pCEAEDID[offset++] ;
                RxCapability.AUDDes[i].uc[1] = pCEAEDID[offset++] ;
                RxCapability.AUDDes[i].uc[2] = pCEAEDID[offset++] ;
            }

            break ;

        case 0x02: // Video Data Block ;
            //RxCapability.VDOModeCount = 0 ;
            offset ++ ;
            for( i = 0,RxCapability.idxNativeVDOMode = 0xff ; i < count ; i++, offset++ )
            {
                BYTE VIC ;
                VIC = pCEAEDID[offset] & (~0x80);
                // if( FindModeTableEntryByVIC(VIC) != -1 )
                {
                    RxCapability.VDOMode[RxCapability.VDOModeCount] = VIC ;
                    if( pCEAEDID[offset] & 0x80 )
                    {
                        RxCapability.idxNativeVDOMode = (BYTE)RxCapability.VDOModeCount ;
                        iVideoModeSelect = RxCapability.VDOModeCount ;
                    }

                    RxCapability.VDOModeCount++ ;
                }
            }
            break ;

        case 0x03: // Vendor Specific Data Block ;
            offset ++ ;
            RxCapability.IEEEOUI = (ULONG)pCEAEDID[offset+2] ;
            RxCapability.IEEEOUI <<= 8 ;
            RxCapability.IEEEOUI += (ULONG)pCEAEDID[offset+1] ;
            RxCapability.IEEEOUI <<= 8 ;
            RxCapability.IEEEOUI += (ULONG)pCEAEDID[offset] ;
            if(count>5)
            {
                RxCapability.dc.uc = pCEAEDID[offset+5]&0x70;
            }
            offset += count ; // ignore the remaind.

            break ;

        case 0x04: // Speaker Data Block ;
            offset ++ ;
            RxCapability.SpeakerAllocBlk.uc[0] = pCEAEDID[offset] ;
            RxCapability.SpeakerAllocBlk.uc[1] = pCEAEDID[offset+1] ;
            RxCapability.SpeakerAllocBlk.uc[2] = pCEAEDID[offset+2] ;
            offset += 3 ;
            break ;
        case 0x05: // VESA Data Block ;
            offset += count+1 ;
            break ;
        case 0x07: // Extended Data Block ;
            offset += count+1 ; //ignore
            break ;
        default:
            offset += count+1 ; // ignore
        }
    }
    RxCapability.ValidCEA = TRUE ;
    return TRUE ;
}

void Config_GeneralPurpose_Infoframe(BYTE *p3DInfoFrame)
{
    // please fill HDMI 1.4 Infoframe here.
    EnableVendorSpecificInfoFrame(TRUE, p3DInfoFrame) ;

}



void HDMITXDisable (void)
{
    //DisableAudioOutput();
    DisableVideoOutput();
}


BYTE HDMITX_ReadI2C_Byte(BYTE RegAddr)
{
    BYTE d;
    MMP_RESULT flag;
    mmpIicLockModule();
    if (0 != (flag = mmpIicReceiveData(CONTROLLER_MODE, IT6613_IICADDR, RegAddr, &d, 1)))
    {
        printf("HDMITX I2C Read error, reg = %02x\n", RegAddr);
        mmpIicGenStop();
    }
    mmpIicReleaseModule();
    PalSleep(1); //avoid AV no sync, don't remove
    return d;
}


SYS_STATUS HDMITX_WriteI2C_Byte(BYTE RegAddr, BYTE d)
{
    BOOL flag;

    mmpIicLockModule();
    if (0 != (flag = mmpIicSendData(CONTROLLER_MODE, IT6613_IICADDR, RegAddr, &d, 1)))
    {
        printf("HDMITX I2c write error, reg = %02x val =%02x\n", RegAddr, d);
        mmpIicGenStop();
    }
    mmpIicReleaseModule();
    PalSleep(1);    //avoid AV no sync, don't remove
    return flag;

}


SYS_STATUS HDMITX_ReadI2C_ByteN(BYTE RegAddr, BYTE *pData, int N)
{
    BOOL flag;
    mmpIicLockModule();
    if (0 != (flag = mmpIicReceiveData(CONTROLLER_MODE, IT6613_IICADDR, RegAddr, pData , N)))
    {
        printf("HDMITX Read byte error\n");
        mmpIicGenStop();
    }
    mmpIicReleaseModule();
    PalSleep(1); //avoid AV no sync, don't remove
    return flag;

}


SYS_STATUS HDMITX_WriteI2C_ByteN(BYTE RegAddr, BYTE *pData, int N)
{

    BOOL flag;
    mmpIicLockModule();
    if ( 0 != (flag = mmpIicSendData(CONTROLLER_MODE, IT6613_IICADDR, RegAddr, pData , N)))
    {
        printf("HDMITX Write i2c byte error\n");
        mmpIicGenStop();
    }
    mmpIicReleaseModule();
    PalSleep(1);    //avoid AV no sync, don't remove
    return flag;

}

SYS_STATUS HDMITX_SetI2C_Byte(BYTE Reg,BYTE Mask,BYTE Value)
{
    BYTE Temp;
    if( Mask != 0xFF )
    {
        Temp=HDMITX_ReadI2C_Byte(Reg);
        Temp&=(~Mask);
        Temp|=Value&Mask;
    }
    else
    {
        Temp=Value;
    }
    return HDMITX_WriteI2C_Byte(Reg,Temp);
}

BOOL HDMITX_IsChipEmpty(void)
{
    BYTE data, regAddr = 0x0;
    MMP_RESULT flag;
    BOOL isEmpty = FALSE;

    mmpIicLockModule();
    if (0 != (flag = mmpIicReceiveData(CONTROLLER_MODE, IT6613_IICADDR, regAddr, &data, 1)))
    {
        mmpIicGenStop();
        isEmpty = TRUE;
    }
    mmpIicReleaseModule();

    return isEmpty;
}

