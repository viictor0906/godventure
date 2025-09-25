extends Node

class_name MovementComponent

func getDirection() -> Vector2:
	return Input.get_vector(
		"leftDirection",
		"rightDirection",
		"upDirection",
		"downDirection"
)

func getRoll() -> bool:
	return Input.is_action_just_pressed("rollDirection")

func getJump() -> bool:
	return Input.is_action_just_pressed("jumpDirection")
