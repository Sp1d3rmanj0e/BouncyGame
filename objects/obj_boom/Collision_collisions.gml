/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 004EC98E
/// @DnDArgument : "var" "distance_to_object(obj_player)"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "100"
if(!(distance_to_object(obj_player) > 100))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E3172AD
	/// @DnDParent : 004EC98E
	/// @DnDArgument : "expr" "point_direction(x, y, obj_player.x, obj_player.y)"
	/// @DnDArgument : "var" "phy_rotation"
	phy_rotation = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1EB47F8F
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 004EC98E
	/// @DnDArgument : "expr" "other.phy_rotation * -1 - 90"
	/// @DnDArgument : "var" "phy_rotation"
	with(obj_player) {
	phy_rotation = other.phy_rotation * -1 - 90;
	
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 73278770
	/// @DnDInput : 4
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 004EC98E
	/// @DnDArgument : "function" "physics_apply_local_impulse"
	/// @DnDArgument : "arg" "0"
	/// @DnDArgument : "arg_1" "0"
	/// @DnDArgument : "arg_2" "0"
	/// @DnDArgument : "arg_3" "500"
	with(obj_player) {
		physics_apply_local_impulse(0, 0, 0, 500);
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1203AC18
instance_destroy();