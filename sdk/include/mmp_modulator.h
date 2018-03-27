#ifndef __MMP_MODULATOR_H__
#define __MMP_MODULATOR_H__

//=============================================================================
//                              Constant Definition
//=============================================================================
#if defined(WIN32)

#if defined(MODULATOR_EXPORTS)
#define MODULATOR_API __declspec(dllexport)
#else
#define MODULATOR_API __declspec(dllimport)
#endif

#else
#define MODULATOR_API extern
#endif //#if defined(WIN32)

//=============================================================================
//                              Constant Definition
//=============================================================================

//=============================================================================
//                              Structure Definition
//=============================================================================

//=============================================================================
//				  Macro Definition
//=============================================================================


//=============================================================================
//				  Structure Definition
//=============================================================================


//=============================================================================
//				  Global Data Definition
//=============================================================================


//=============================================================================
//				  Private Function Definition
//=============================================================================


//=============================================================================
//				  Public Function Definition
//=============================================================================

MODULATOR_API int iteUsbModDriverRegister(void);

//=============================================================================
/**
* Device polling thread
*/
//=============================================================================
MODULATOR_API void* UsbMod_ThreadFunc(void* arg);

#endif


