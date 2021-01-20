/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3B2C3470
/// @DnDArgument : "expr" "place_meeting(x,y,obj_player)"
if(place_meeting(x,y,obj_player))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 490B01AC
	/// @DnDParent : 3B2C3470
	/// @DnDArgument : "var" "image_index"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "1"
	if(!(image_index == 1))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6335D1F2
		/// @DnDParent : 490B01AC
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_objective"
		/// @DnDSaveInfo : "spriteind" "spr_objective"
		sprite_index = spr_objective;
		image_index = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17B7EEF5
		/// @DnDParent : 490B01AC
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.objectives"
		global.objectives += -1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D2F8147
	/// @DnDParent : 3B2C3470
	/// @DnDArgument : "var" "global.objectives"
	/// @DnDArgument : "op" "3"
	if(global.objectives <= 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 38C1A63F
		/// @DnDParent : 7D2F8147
		/// @DnDArgument : "expr" "timeline_running"
		/// @DnDArgument : "not" "1"
		if(!(timeline_running))
		{
			/// @DnDAction : YoYo Games.Timelines.Set_Timeline
			/// @DnDVersion : 1
			/// @DnDHash : 5B517210
			/// @DnDParent : 38C1A63F
			/// @DnDArgument : "timeline" "tml_win"
			/// @DnDSaveInfo : "timeline" "tml_win"
			timeline_index = tml_win;
			timeline_loop = 0;
			timeline_running = 1;
		}
	}
}