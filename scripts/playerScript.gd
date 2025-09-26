extends CharacterBody2D

@export var playerSpeed: float
@export var healthValue: HealthComponent

func _physics_process(_delta: float) -> void:
	var directions = Input.get_vector(
		"leftDirection",
		"rightDirecion",
		"upDirection",
		"downDirection"
	)
	velocity = directions * playerSpeed
	move_and_slide()
