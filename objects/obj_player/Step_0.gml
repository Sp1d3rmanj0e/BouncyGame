/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 35592D65
/// @DnDArgument : "key" "vk_right"
var l35592D65_0;
l35592D65_0 = keyboard_check(vk_right);
if (l35592D65_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53302899
	/// @DnDDisabled : 1
	/// @DnDParent : 35592D65
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "phy_position_x"


	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 58F6143A
	/// @DnDInput : 4
	/// @DnDParent : 35592D65
	/// @DnDArgument : "function" "physics_apply_force"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "120"
	/// @DnDArgument : "arg_3" "0"
	physics_apply_force(x, y, 120, 0);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5DF0CAA6
/// @DnDArgument : "key" "vk_left"
var l5DF0CAA6_0;
l5DF0CAA6_0 = keyboard_check(vk_left);
if (l5DF0CAA6_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D19C724
	/// @DnDDisabled : 1
	/// @DnDParent : 5DF0CAA6
	/// @DnDArgument : "expr" "-5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "phy_position_x"


	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1FFACD43
	/// @DnDInput : 4
	/// @DnDParent : 5DF0CAA6
	/// @DnDArgument : "function" "physics_apply_force"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "-120"
	/// @DnDArgument : "arg_3" "0"
	physics_apply_force(x, y, -120, 0);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 0231BD0A
/// @DnDArgument : "key" "vk_up"
var l0231BD0A_0;
l0231BD0A_0 = keyboard_check_pressed(vk_up);
if (l0231BD0A_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D201752
	/// @DnDParent : 0231BD0A
	/// @DnDArgument : "var" "lock"
	if(lock == 0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 68B44D61
		/// @DnDInput : 4
		/// @DnDParent : 7D201752
		/// @DnDArgument : "function" "physics_apply_impulse"
		/// @DnDArgument : "arg" "x"
		/// @DnDArgument : "arg_1" "y"
		/// @DnDArgument : "arg_2" "0"
		/// @DnDArgument : "arg_3" "-250"
		physics_apply_impulse(x, y, 0, -250);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 195C795B
		/// @DnDParent : 7D201752
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "lock"
		lock = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B887E3F
/// @DnDArgument : "var" "phy_linear_velocity_y"
if(phy_linear_velocity_y == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F4A7E59
	/// @DnDParent : 2B887E3F
	/// @DnDArgument : "var" "lock"
	lock = 0;
}