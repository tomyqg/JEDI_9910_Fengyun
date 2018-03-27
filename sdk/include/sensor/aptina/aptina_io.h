
//=============================================================================
//                Constant Definition
//=============================================================================

//=============================================================================
//                Macro Definition
//=============================================================================

//=============================================================================
//                Structure Definition
//=============================================================================

//=============================================================================
//                Global Data Definition
//=============================================================================

//=============================================================================
//                Private Function Definition
//=============================================================================

//=============================================================================
//                Public Function Definition
//=============================================================================
MMP_UINT32 
APTINA_ReadI2C_32Bit(
    MMP_UINT16 RegAddr);

MMP_UINT16
APTINA_ReadI2C_16Bit(
    MMP_UINT16 RegAddr);

MMP_UINT8 
APTINA_ReadI2C_8Bit(
    MMP_UINT16 RegAddr);

MMP_RESULT 
APTINA_WriteI2C_32Bit(
    MMP_UINT16 RegAddr,
    MMP_UINT32 data);

MMP_RESULT 
APTINA_WriteI2C_16Bit(
    MMP_UINT16 RegAddr,
    MMP_UINT16 data);

MMP_RESULT 
APTINA_WriteI2C_8Bit(
    MMP_UINT16 RegAddr,
    MMP_UINT8  data);
        


