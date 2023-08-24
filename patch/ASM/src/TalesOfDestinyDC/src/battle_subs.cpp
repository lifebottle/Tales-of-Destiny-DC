#include "Externs.h"
#include "Types.h"
#include "Util.h"
#define NUM_TEXT_QUEUES 6
#define NUM_TEXT_CONTAINERS 7
extern u32 Battle_Sub_Initialized;
extern u32 Battle_Table_Count;
extern u8 Pause_Flag;
extern u32 BC_FLAG;
extern u8 DEBUG_FLAG;
u32 VICTORY_FLAG;
extern u32 Battle_Table_Count;
extern Battle_Table BattleTable[0xFFF];
// need to figure these param and width structs out
// if we want to create more than the 2 hardcoded pre built structs
// that we stored in ram...
extern Text_Param TextParamA;
extern Text_Param TextParamB;
extern Text_Param TextParamC;
extern Text_Param TextParamD;
extern Text_Param TextParamE;
extern Text_Param TextParamDEBUG;
extern Text_Width TextWidthA;
extern Text_Width TextWidthB;
extern Text_Width TextWidthC;
extern Text_Width TextWidthD;
extern Text_Width TextWidthE;
extern Text_Width TextWidthDEBUG;
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
	void Print_Text(Text_Container* txt);
	void Print_Debug();
	u32 Calculate_Y(u16 Type, u32 Container_Id, u32 size);
	u32 CURRENT_BC_ID;

	u8 debug_str[0x50];
	u32 last_unused_voices[5];

	void init_battle_subs()
	{
		TextParamDEBUG.x_size = 0x90;
		TextParamDEBUG.y_size = 0x90;
		TextParamDEBUG.x_pos = 0x6c60;
		TextParamDEBUG.y_pos = 0x7930;
		TextParamDEBUG.rgba = 0x80808080;

		for (int i = 0; i < NUM_TEXT_CONTAINERS; i++)
		{
			text_container[i].Container_Id = i;
			if (i == 0)
			{
				text_container[i].Param = &TextParamA;
				text_container[i].Width = &TextWidthA;
				text_container[i].ALLOWED_TYPE = IN_BATTLE_QUOTE;
			}
			else if (i == 1)
			{
				text_container[i].Param = &TextParamB;
				text_container[i].Width = &TextWidthB;
				text_container[i].ALLOWED_TYPE = IN_BATTLE_QUOTE;
			}
			else if (i == 2)
			{
				text_container[i].Param = &TextParamC;
				text_container[i].Width = &TextWidthC;
				text_container[i].ALLOWED_TYPE = IN_BATTLE_QUOTE;
			}
			else if (i == 3)
			{
				text_container[i].Param = &TextParamD;
				text_container[i].Width = &TextWidthD;
				text_container[i].ALLOWED_TYPE = BLAST_CALIBER_QUOTE;
			}
			else if (i == 4)
			{
				text_container[i].Param = &TextParamE;
				text_container[i].Width = &TextWidthE;
				text_container[i].ALLOWED_TYPE = BLAST_CALIBER_QUOTE;
			}
			else if (i == 5)
			{
				text_container[i].Param = &TextParamA;
				text_container[i].Width = &TextWidthA;
				text_container[i].ALLOWED_TYPE = VICTORY_QUOTE;
			}
			else if (i == 6)
			{
				text_container[i].Param = &TextParamB;
				text_container[i].Width = &TextWidthB;
				text_container[i].ALLOWED_TYPE = VICTORY_QUOTE;
			}
		}
		for (int i = 0; i < 0xFFF; i++)
		{
			if (BattleTable[i].voice_id == 0)
			{
				Battle_Table_Count = i;
				Battle_Sub_Initialized = 1;
				return;
			}
		}

	}

	void Add_To_Debug_Queue(u32 id)
	{
		for (int i = 0; i < 5; i++)
		{
			// add if empty
			if (last_unused_voices[i] == 0)
			{
				last_unused_voices[i] = id;
				return;
			}
		}
		// got here, no empty, so lets shift em all over
		// hrr hardcode, easy
		last_unused_voices[0] = last_unused_voices[1];
		last_unused_voices[1] = last_unused_voices[2];
		last_unused_voices[2] = last_unused_voices[3];
		last_unused_voices[3] = last_unused_voices[4];
		last_unused_voices[4] = id;
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
		else
		{
			if (DEBUG_FLAG)
			{
				Add_To_Debug_Queue(voice_id);
			}
		}
	}
	void Add_To_Text_Queue(Sound_Queue* sound, Battle_Table* table)
	{
		for (int i = 0; i < NUM_TEXT_QUEUES; i++)
		{
			if (text_queue[i].battle == table)
			{
				return;
			}
		}
		for (int i = 0; i < NUM_TEXT_QUEUES; i++)
		{
			if (text_queue[i].sound == 0)
			{
				u32 type = IN_BATTLE_QUOTE;
				if (VICTORY_FLAG)
				{
					type = VICTORY_FLAG;
				}
				else if (BC_FLAG)
				{
					type = BLAST_CALIBER_QUOTE;
				}
				text_queue[i].Trigger_Type = type;
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
			Print_Text(&text_container[i]);
		}
		Print_Debug();
		
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
							if (text_queue[i].battle->table->Lines[j]->Type == BOSS_QUOTE || text_queue[i].Trigger_Type == text_queue[i].battle->table->Lines[j]->Type)
							{
								if (text_queue[i].battle->table->Lines[j]->BC_Id == 0 || (text_queue[i].battle->table->Lines[j]->BC_Id == CURRENT_BC_ID))
								{
									Add_Text_Line(text_queue[i].battle->table->Lines[j], text_queue[i].sound, text_queue[i].battle);
								}
							}
						}
					}
				}
				else
				{
					// sound not playing, is it queued?
					if (!Is_Sound_Queued(text_queue[i].sound, text_queue[i].battle->voice_id))
					{
						// if not, delete it
						Clear_Text_Queue(text_queue[i].battle->voice_id);
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
			if (text_container[i].Battle_Voice_Id == 0 &&
				(
					(text_container[i].ALLOWED_TYPE == line->Type) ||
					(text_container[i].ALLOWED_TYPE == IN_BATTLE_QUOTE && line->Type == BOSS_QUOTE)
					)
				)
			{
				text_container[i].Battle_Voice_Id = battle->voice_id;
				text_container[i].Current_Frame = sound->frame_counter;
				text_container[i].Current_Post_Frame = 0;
				text_container[i].Extra_Frames = battle->table->Extra_Frames;
				text_container[i].Line = line;
				text_container[i].Sound = sound;
				text_container[i].Table = battle->table;
				text_container[i].Total_Lines = battle->table->Num_Lines;
				text_container[i].Param->rgba = 0x80808080;
				return;
			}
		}
		// didnt get added :'(
	}

	void Fade_Text(Text_Container* txt)
	{
		u32 fade_timer = 0x10; // limit fade timer to last 16 frames
		u32 remaining_frames = 0xFF; // some random initial value that wont trip things
		// use for post
		if (txt->Current_Post_Frame > 0)
		{
			remaining_frames = (txt->Extra_Frames - txt->Current_Post_Frame);
		}
		else
		{
			remaining_frames = (txt->Line->End_Frame - txt->Current_Frame);
		}
		if (remaining_frames < 0x10)
		{
			u32 alpha = ((remaining_frames * 0x80) / fade_timer);
			u32 color = 0x80808000 + alpha;
			txt->Param->rgba = color;
			//txt->Param->x_pos = txt->Param->x_pos + (0x10 * (fade_timer - remaining_frames));
		}


	}

	void Check_Sound_Done(Text_Container* txt)
	{
		// make sure not paused
		if (txt->Sound != 0)
		{
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
						//Fade_Text(txt);
					}
				}
			}
		}
	}

	bool Is_Sound_Playing(Sound_Queue* sound, u32 voice_id)
	{
		if (sound != 0)
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
		return false;
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

	void Print_Text(Text_Container* txt)
	{
		if (txt->Battle_Voice_Id != 0)
		{
			u32 size = 0x90;
			u32 y = Calculate_Y(txt->Line->Type, txt->Container_Id, size);
			txt->Param->x_size = size;
			txt->Param->y_size = size;
			//txt->Param->rgba = 0x80808080;
			Fade_Text(txt);
			Calc_Width(txt->Param, &(txt->Line->String), txt->Width, y);
			Print_String(txt->Param, &(txt->Line->String));
		}
	}
	void Print_Debug()
	{
		if (DEBUG_FLAG)
		{
			sprintf(debug_str, "Last unused id's: 0x%04X, 0x%04X, 0x%04X, 0x%04X, 0x%04X", last_unused_voices[0], last_unused_voices[1], last_unused_voices[2], last_unused_voices[3], last_unused_voices[4]);
			Print_String(&TextParamDEBUG, debug_str);
		}
	}
	u32 Calculate_Y(u16 Type, u32 Container_Id, u32 size)
	{
		// get Y
		// 0..2 In Battle Quote
		// 3..4 Blast Caliber Quote
		// 5..6 Victory Quote
		u32 y = 0x8180; //8210
		u32 multiplier = 0;	// each line is 90 under next
		if (Type == IN_BATTLE_QUOTE || Type == BOSS_QUOTE)
		{
			y = 0x8180;// 0x8210;
			multiplier = (Container_Id)*size;	    // each line is 90 under next
		}
		else if (Type == BLAST_CALIBER_QUOTE)
		{
			y = 0x84B0; // 8540;
			multiplier = (Container_Id - 3) * size;	// each line is 90 under next
		}
		else if (Type == VICTORY_QUOTE)
		{
			y = 0x8050; //0x80E0;
			multiplier = (Container_Id - 5) * size;	// each line is 90 under next
		}
		y += multiplier;
		return y;
	}
	void Clear_All_Queues()
	{
		Clear_Text_Containers();
		Clear_Text_Queues();
	}
	void Clear_All_Queues_Set_Victory() {
		Clear_All_Queues();
		VICTORY_FLAG = 1;
	}
	void Clear_All_Queues_Clear_Victory() {
		Clear_All_Queues();
		VICTORY_FLAG = 0;
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
					text_queue[i].Trigger_Type = 0;
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
			text_queue[i].Trigger_Type = 0;
		}
	}
	/*Voice_Table* test()
	{
		return BattleTable[3].table;
	}*/
};