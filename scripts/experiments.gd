extends Sprite2D

@export var experiment_id: int = 1

func _ready() -> void:
	match experiment_id:
		5:
			self.material.set_shader_parameter("color", Color.YELLOW_GREEN)
		6:
			var tween: Tween = create_tween()
			tween.set_loops()
			tween.tween_property(self.material, "shader_parameter/radius", 0.1, 0.5)
			tween.tween_property(self.material, "shader_parameter/radius", 0.5, 0.5)
