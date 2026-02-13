extends CharacterBody2D
class_name Tank

signal health_changed

@export var max_health: int = 100
var current_health: int

func _ready():
	current_health = max_health

func take_damage(amount: int):
	current_health -= amount
	current_health = max(current_health, 0)
	health_changed.emit()

	if current_health <= 0:
		queue_free()
