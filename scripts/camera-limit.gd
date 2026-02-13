extends Camera2D

@onready var level_sprite: Sprite2D = $"../../Level"

func _ready():
	set_camera_limits()

func set_camera_limits():
	var texture_size := level_sprite.texture.get_size()
	var sprite_scale := level_sprite.scale

	var width := texture_size.x * sprite_scale.x
	var height := texture_size.y * sprite_scale.y

	limit_left = int(level_sprite.position.x - width / 2)
	limit_right = int(level_sprite.position.x + width / 2)
	limit_top = int(level_sprite.position.y - height / 2)
	limit_bottom = int(level_sprite.position.y + height / 2)
