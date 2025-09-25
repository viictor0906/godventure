extends CharacterBody2D

@export var playerDirections: MovementComponent
@export var playerSpeed: float
@export var playerJumpVelocity: float
@export var playerRollVelocity: float

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta: float):
	var playerDirection = playerDirections.getDirection()
	var playerJumpDirection = playerDirections.getJump()
	
	if not is_on_floor():
		velocity.y += gravity * delta
	
	if playerJumpDirection == true and is_on_floor():
		velocity.y -= playerJumpVelocity
	
	velocity.x = playerDirection.x * playerSpeed
	move_and_slide()
