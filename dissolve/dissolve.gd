extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")


func _process(delta: float) -> void:
	(sprite_2d.material as ShaderMaterial)\
		.set_shader_parameter("DissolveValue", sin(Time.get_ticks_msec() * 0.0025))
