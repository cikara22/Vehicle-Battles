extends ProgressBar

@export var tank : Tank

func _ready():
	tank.health_changed.connect(update)

func update():
	value = tank.current_health * 100 / tank.max_health
