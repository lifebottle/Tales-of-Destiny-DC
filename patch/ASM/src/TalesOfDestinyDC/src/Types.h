#pragma once

#define EXPORT extern "C"

#ifdef _MSC_VER
#define NOINLINE
#else
#define NOINLINE  __attribute__ ((noinline))
#endif

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef char s8;
typedef short s16;
typedef int s32;

#define HALFWORD(x) (*(u16*)(x))
#define SIGNEDHALFWORD(x) (*(s16*)(x))
#define WORD(x) (*(u32*)(x))


#define TRUE 1
#define FALSE 0

#define VICTORY_QUOTE 1
#define IN_BATTLE_QUOTE 2
#define BLAST_CALIBER_QUOTE 3
struct Sound_Queue;
struct Voice_Line;
struct Voice_Table;
struct Text_Param;
struct Text_Width;
//Text_Container text, TextParam param, TextWidth width
struct Text_Container
{
	u32 Container_Id;
	Sound_Queue* Sound;
	u32 Battle_Voice_Id;
	//u8* String_Pointer;
	Voice_Line* Line;
	Voice_Table* Table;
	u32 Current_Post_Frame;
	u32 Extra_Frames;
	u32 Current_Frame;
	u32 Total_Lines;	
	Text_Param* Param;
	Text_Width* Width;
};

struct Text_Param
{
	u8* Text;				// 0
	u8 Text_Type;			// 04
	u8 Text_Oritentation;	// 05
	u16 unk_06;				// 06
	u16 Italic_Slantness;	// 08
	u16 unk_a;				// 0a
	u32 rgba;				// 0c
	u16 unk_10;				// 10
	u16 extra_spacing;		// 12
	u16 x_pos;				// 14
	u16 y_pos;				// 16
	u32 unk_18;				// 18
	u16 x_size;				// 1c
	u16 y_size;				// 1e	
};
struct Text_Width
{
	u8 unk[0x100];
};
struct Sound_Queue
{
	u8 unk[0x410];				// 0-410
	u32* some_struct;			// 410
	u8 unk_214;					// 414
	u8 unk_215;					// 415
	u16 unk_216;				// 416
	u16 current_voice_id;		// 418
	u16 queued_voice_id;		// 41a
	u16 queued_frame_countdown;	// 41c
	u16 unk_21e;				// 41e
	u16 frame_counter;			// 420
	u16 max_frame;				// 422
};
struct Voice_Line
{
	u16 Type;
	u8 Priority;
	u8 BC_Id;
	u16 Start_Frame;
	u16 End_Frame;
	u8 String;
};
struct Voice_Table
{
	//u16 Type;			// 0
	u16 Extra_Frames;	// 2
	u16 Num_Lines;		// 3
	Voice_Line* Lines[];	// 4
};
struct Battle_Table
{
	u32 voice_id;
	Voice_Table* table;
	inline bool operator ==(const u32 & b)
	{
		return voice_id == b;
	}

	inline bool operator <(const u32 & b)
	{
		return voice_id < b;
	}
};
struct Text_Queue
{
	Sound_Queue* sound;
	Battle_Table* battle;
	u32 Trigger_Type;
};