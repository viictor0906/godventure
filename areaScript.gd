extends Area2D

@export var health = HealthComponent.new()

func _on_body_entered(_body: Node2D) -> void:
	health.healthLess()
	if health.healthValue == 0:
		_body.queue_free()
