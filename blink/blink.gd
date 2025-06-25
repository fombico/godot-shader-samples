extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D


func _ready() -> void:
	var tween = get_tree().create_tween().set_loops()
	tween.tween_method(set_shader_blink_intensity, 1.0, 0.0, 1)


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")


func set_shader_blink_intensity(new_value: float):
	(sprite_2d.material as ShaderMaterial).set_shader_parameter("blink_intensity", new_value)
