extends Node2D

@onready var camera_2d: Camera2D = $Camera2D

var cameraShakeNoise : FastNoiseLite

func _ready() -> void:
	cameraShakeNoise = FastNoiseLite.new()
	var camera_tween = get_tree().create_tween().set_loops()
	camera_tween.tween_method(_start_camera_shake, 5.0, 1.0, 0.5)


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")


func _start_camera_shake(intensity: float) -> void:
	var camera_offset = cameraShakeNoise.get_noise_1d(Time.get_ticks_msec()) * intensity
	camera_2d.offset.x = camera_offset
	camera_2d.offset.y = camera_offset
