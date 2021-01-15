/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 125B746F
/// @DnDArgument : "expr" "obj_gun.image_angle * -1 + 90"
/// @DnDArgument : "var" "phy_rotation"
phy_rotation = obj_gun.image_angle * -1 + 90;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 25E5201E
/// @DnDInput : 4
/// @DnDArgument : "function" "physics_apply_local_impulse"
/// @DnDArgument : "arg" "0"
/// @DnDArgument : "arg_1" "0"
/// @DnDArgument : "arg_2" "0"
/// @DnDArgument : "arg_3" "-50"
physics_apply_local_impulse(0, 0, 0, -50);