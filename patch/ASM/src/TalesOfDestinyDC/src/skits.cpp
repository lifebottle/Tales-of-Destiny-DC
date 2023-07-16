#include "Externs.h"
#include "Types.h"
#include "Util.h"
extern Text_Param TextParamSKIT1;
extern Text_Width TextWidthSKIT1;
extern Text_Param TextParamSKIT2;
extern Text_Width TextWidthSKIT2;
extern Skit_Thing* Game_Data_Stuff;
#define NUM_CONTAINERS 2

extern "C"
{
	Skit_Container skits[2];

	void Skit_Reset(u32* addr)
	{
		// one 019D5ABC  215c
		// two 019D5AD0  2170
		for (int i = 0; i < NUM_CONTAINERS; i++)
		{
			if (i == 0) {
				if (addr == &(Game_Data_Stuff->address_one))
				{
					skits[i].processed_flag = 0;
					skits[i].string = 0;
					//skits[0].struct_thing = addr;
				}
			}
			else if (i == 1)
			{
				if (addr == &(Game_Data_Stuff->address_two))
				{
					skits[i].processed_flag = 0;
					skits[i].string = 0;
					//skits[1].struct_thing = addr;
				}
			}
		}

	}
	// 003EA8E0
	void Prepare_String(Skit_Container* thing, u8* str)
	{
		// codes to check for:
		// 04, 05, 06, 07, 09, 0b, 0c, 0d
		// ignore next 4
		if (!thing->processed_flag)
		{
			// shitty loop thru text until we find 01
			while (true)
			{
				u8 chr = str[0];
				if (chr >= 0x3 && chr <= 0x10)
				{
					str += 5;
				}
				else
				{
					if (chr == 0x01)
					{
						// newline!
						str[0] = 0; // set it to 0
						str += 1;
						thing->processed_flag = 1;
						thing->string = str;
						return;
					}
					else if (chr == 0x0)
					{
						thing->processed_flag = 1;
						thing->string = 0;
						return;
					}
					else
					{
						str++;
					}
				}
			}
		}
	}


	void Print_New_Skit_Line(Skit_Container* thing, Text_Param* original_param, Text_Param* new_param, Text_Width* new_width)
	{
		if (thing->string != 0)
		{
			//u32 size = 0x90;
			//u32 y = 0x84B0;
			// 8500 ?
			u32 y = original_param->y_pos;
			new_param->new_y_size = original_param->new_y_size;
			new_param->new_x_size = original_param->new_x_size;
			//TextParamSKIT.unk_18 = 0xc00180;
			new_param->rgba = original_param->rgba;
			//txt->Param->x_size = size;
			//txt->Param->y_size = size;
			//txt->Param->rgba = 0x80808080;
			//Fade_Text(txt);
			Calc_Width(new_param, thing->string, new_width, y);
			Print_String(new_param, thing->string);
		}
	}

	void Fix_Skit_Print(Text_Param* param, u8* String, u32* addr)
	{
		for (int i = 0; i < NUM_CONTAINERS; i++)
		{
			if (i == 0)
			{
				if (addr == &(Game_Data_Stuff->address_one))
				{
					Prepare_String(&skits[i], String);
					Print_New_Skit_Line(&skits[i], param, &TextParamSKIT1, &TextWidthSKIT1);
				}
			}
			else if (i == 1)
			{
				if (addr == &(Game_Data_Stuff->address_two))
				{
					Prepare_String(&skits[i], String);
					Print_New_Skit_Line(&skits[i], param, &TextParamSKIT2, &TextWidthSKIT2);
				}
			}
			//Prepare_String(String);
		}
		Print_String(param, String);
	}

};