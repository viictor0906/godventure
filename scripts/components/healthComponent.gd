extends Node

class_name HealthComponent

@export var healthValue: int

func healthLess():
	healthValue -= 1
	print("healthValue")
