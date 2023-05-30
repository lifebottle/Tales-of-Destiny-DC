#pragma once
#include "Types.h"

extern "C"
{
	void Print_String(Text_Param* param, u8* String);
	void Calc_Width(Text_Param* param, u8* String, Text_Width* width, u32 y_pos);
	
}
