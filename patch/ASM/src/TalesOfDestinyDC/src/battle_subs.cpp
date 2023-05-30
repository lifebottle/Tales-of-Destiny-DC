#include "Externs.h"
#include "Types.h"
#include "Util.h"
#define NUM_TEXT_QUEUES 6
#define NUM_TEXT_CONTAINERS 2
extern u32 Battle_Sub_Initialized;
extern u32 Battle_Table_Count;
extern u8 Pause_Flag;
extern u32 Battle_Table_Count;
extern Battle_Table BattleTable[0xFFF];
// need to figure these param and width structs out
// if we want to create more than the 2 hardcoded pre built structs
// that we stored in ram...
extern Text_Param TextParamA;
extern Text_Param TextParamB;
extern Text_Width TextWidthA;
extern Text_Width TextWidthB;
Text_Queue text_queue[NUM_TEXT_QUEUES];
Text_Container text_container[NUM_TEXT_CONTAINERS];

extern "C"
{
	void init_battle_subs();
	void Setup_Text(Sound_Queue* sound, u32 voice_id);
	void Add_To_Text_Queue(Sound_Queue* sound, Battle_Table* table);
	void Clear_Text_Queues();
	void Process_Text_Queue();
	void Clear_Text_Queue(u32 voice_id);
	void Process_Display_Text();
	void Add_Text_Line(Voice_Line* line, Sound_Queue* sound, Battle_Table* battle);
	void Check_Frame_Count(Text_Container* txt);
	void Check_Sound_Done(Text_Container* txt);
	bool Is_Sound_Queued(Sound_Queue* sound, u32 voice_id);
	bool Is_Sound_Playing(Sound_Queue* sound, u32 voice_id);
	void Clear_Text_Containers();
	void Clear_Text_Container(Text_Container* txt);
	void Print_Text(Text_Container* txt, Text_Param* param, Text_Width* width);
	u32 Calculate_Y(u16 Type, u32 Container_Id, u32 size);

	void init_battle_subs()
	{
		for (int i = 0; i < NUM_TEXT_CONTAINERS; i++)
		{
			text_container[i].Container_Id = i;
		}
		for (int i = 0; i < 0xFFF ; i++)
		{
			if (BattleTable[i].voice_id == 0)
			{
				Battle_Table_Count = i;
				Battle_Sub_Initialized = 1;
				return;
			}
		}

	}
	void Setup_Text(Sound_Queue* sound, u32 voice_id)
	{
		if (!Battle_Sub_Initialized)
		{
			init_battle_subs();
		}
		// check if voice id in our table
		Battle_Table* table =
			bsearch<Battle_Table, u32>(BattleTable, Battle_Table_Count, voice_id);
		//Battle_Table* table = search(voice_id);
		if (table != 0)
		{
			Add_To_Text_Queue(sound, table);
		}
	}
	void Add_To_Text_Queue(Sound_Queue* sound, Battle_Table* table)
	{
		for (int i = 0; i < NUM_TEXT_QUEUES; i++)
		{
			if (text_queue[i].sound == 0)
			{
				text_queue[i].sound = sound;
				text_queue[i].battle = table;
				return;
			}
		}
		return;
	}

	void Process_Display_Text()
	{
		// check whats done:
		// - check if text sounds are done playing
		// - check if frame counters done
		// check whats new:
		// - process text queue to see if any items due to start
		if (!Battle_Sub_Initialized)
		{
			init_battle_subs();
		}
		for (int i = 0; i < NUM_TEXT_CONTAINERS; i++)
		{
			Check_Frame_Count(&text_container[i]);
			Check_Sound_Done(&text_container[i]);
		}
		Process_Text_Queue();
		for (int i = 0; i < NUM_TEXT_CONTAINERS; i++)
		{
			// hardcode hack
			if (text_container[i].Container_Id == 0)
			{ // use A
				Print_Text(&text_container[i], &TextParamA, &TextWidthA);
			}
			else
			{
				// use B
				Print_Text(&text_container[i], &TextParamB, &TextWidthB);
			}
		}
	}

	void Check_Frame_Count(Text_Container* txt)
	{
		// checks if frame counter passed end counter for item
		// used mostly for multi line sound clips
		if (txt->Sound != 0)
		{
			// check sound_queue* exists (container not empty)
			if (txt->Current_Frame >= txt->Line->End_Frame)
			{
				// sound and sub done, clear Text_Container and clear Text_Buffer
				// what about num lines?
				// only clear text queue when sound clip + ext done?
				if (txt->Total_Lines == 1)
				{
					// this is unlikely to happen but we can clear from text queue
					Clear_Text_Queue(txt->Battle_Voice_Id);
				}
				// clear text container
				Clear_Text_Container(txt);
			}
			else
			{
				// check pause flag
				if (Pause_Flag == 0)
				{
					txt->Current_Frame += 1;
				}
			}
		}
	}

	void Process_Text_Queue()
	{
		// loop through all text queues
		for (int i = 0; i < NUM_TEXT_QUEUES; i++)
		{
			if (text_queue[i].battle != 0)
			{
				if (Is_Sound_Playing(text_queue[i].sound, text_queue[i].battle->voice_id))
				{
					// if sound is playing, loop through lines to see if any are applicable to add
					for (int j = 0; j < text_queue[i].battle->table->Num_Lines; j++)
					{
						if (text_queue[i].sound->frame_counter == text_queue[i].battle->table->Lines[j]->Start_Frame) {
							// add text
							Add_Text_Line(text_queue[i].battle->table->Lines[j], text_queue[i].sound, text_queue[i].battle);
						}
					}
				}
			}
		}
	}

	void Add_Text_Line(Voice_Line* line, Sound_Queue* sound, Battle_Table* battle)
	{
		// first check if any are already playing this line
		// using string pointers I guess lul
		for (int i = 0; i < NUM_TEXT_CONTAINERS; i++)
		{
			if (&(text_container[i].Line->String) == &(line->String))
			{
				// early return
				return;
			}
		}
		// if not already playing we can add one
		for (int i = 0; i < NUM_TEXT_CONTAINERS; i++)
		{
			if (text_container[i].Battle_Voice_Id == 0)
			{
				text_container[i].Battle_Voice_Id = battle->voice_id;
				text_container[i].Current_Frame = sound->frame_counter;
				text_container[i].Current_Post_Frame = 0;
				text_container[i].Extra_Frames = battle->table->Extra_Frames;
				text_container[i].Line = line;
				text_container[i].Sound = sound;
				text_container[i].Table = battle->table;
				text_container[i].Total_Lines = battle->table->Num_Lines;
				return;
			}
		}
		// didnt get added :'(
	}


	void Check_Sound_Done(Text_Container* txt)
	{
		// make sure not paused
		if (Pause_Flag == 0)
		{
			// check if sound done
			// if yes, process post frames:
			// - current_post_frame >= extra_frames -- done
			// - increment current_post_frame
			if (!Is_Sound_Playing(txt->Sound, txt->Battle_Voice_Id))
			{
				if (txt->Current_Post_Frame >= txt->Extra_Frames)
				{
					// done
					Clear_Text_Queue(txt->Battle_Voice_Id);
					Clear_Text_Container(txt);
					return;
				}
				else
				{
					txt->Current_Post_Frame++;
				}
			}
		}
	}

	bool Is_Sound_Playing(Sound_Queue* sound, u32 voice_id)
	{
		if (sound->current_voice_id == voice_id)
		{
			// YES
			return true;
		}
		else
		{
			return false;
		}
	}

	bool Is_Sound_Queued(Sound_Queue* sound, u32 voice_id)
	{
		if (sound->queued_voice_id == voice_id)
		{
			// YES
			return true;
		}
		else
		{
			return false;
		}
	}

	void Print_Text(Text_Container* txt, Text_Param* param, Text_Width* width)
	{
		if (txt->Battle_Voice_Id != 0)
		{
			u32 size = 0x90;
			u32 y = Calculate_Y(txt->Table->Type, txt->Container_Id, size);
			param->x_size = size;
			param->y_size = size;
			param->rgba = 0x80808080;
			Calc_Width(param, &(txt->Line->String), width, y);
			Print_String(param, &(txt->Line->String));
		}
	}
	u32 Calculate_Y(u16 Type, u32 Container_Id, u32 size)
	{
		// get Y
		u32 y = 0x8210;
		if (Type == IN_BATTLE_QUOTE)
		{
			y = 0x8210;
		}
		else if (Type == BLAST_CALIBER_QUOTE)
		{
			y = 0x8540;
		}
		else if (Type == VICTORY_QUOTE)
		{
			y = 0x80E0;
		}
		u32 multiplier = (Container_Id - 1) * size;	// each line is 90 under next
		y += multiplier;
		return y;
	}
	void Clear_All_Queues()
	{
		Clear_Text_Containers();
		Clear_Text_Queues();
	}
	void Clear_Text_Containers()
	{
		for (int i = 0; i < NUM_TEXT_CONTAINERS; i++)
		{
			Clear_Text_Container(&text_container[i]);
		}
	}
	void Clear_Text_Container(Text_Container* txt)
	{
		txt->Sound = 0;
		txt->Battle_Voice_Id = 0;
		txt->Line = 0;
		txt->Current_Frame = 0;
		txt->Current_Post_Frame = 0;
		txt->Table = 0;
		txt->Total_Lines = 0;
		txt->Extra_Frames = 0;
	}
	void Clear_Text_Queue(u32 voice_id) 
	{
		for (int i = 0; i < NUM_TEXT_QUEUES; i++)
		{
			if (text_queue[i].battle != 0)
			{
				if (text_queue[i].battle->voice_id == voice_id)
				{
					text_queue[i].sound = 0;
					text_queue[i].battle = 0;
				}
			}
		}
	}
	void Clear_Text_Queues()
	{
		for (int i = 0; i < NUM_TEXT_QUEUES; i++)
		{
			text_queue[i].sound = 0;
			text_queue[i].battle = 0;
		}
	}
	/*Voice_Table* test()
	{
		return BattleTable[3].table;
	}*/
};