/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 10DE1B11
/// @DnDArgument : "var" "lock"
if(lock == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E32CA81
	/// @DnDParent : 10DE1B11
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "lock"
	lock = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 42803667
	/// @DnDParent : 10DE1B11
	alarm_set(0, 30);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 65CB247B
	/// @DnDParent : 10DE1B11
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_boom"
	/// @DnDSaveInfo : "objectid" "obj_boom"
	instance_create_layer(x + 0, y + 0, "Instances", obj_boom);
}