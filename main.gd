extends CanvasLayer


func _on_vertex_pressed() -> void:
	get_tree().change_scene_to_file("res://vertex/grass.tscn")


func _on_fragment_pressed() -> void:
	get_tree().change_scene_to_file("res://fragment/color_replacement.tscn")


func _on_wavy_text_pressed() -> void:
	get_tree().change_scene_to_file("res://wavy-text/wavy_text.tscn")


func _on_blink_pressed() -> void:
	get_tree().change_scene_to_file("res://blink/blink.tscn")


func _on_camera_shake_pressed() -> void:
	get_tree().change_scene_to_file("res://camera-shake/camera_shake.tscn")


func _on_hit_particle_pressed() -> void:
	get_tree().change_scene_to_file("res://hit-particle/hit_particle.tscn")


func _on_dissolve_pressed() -> void:
	get_tree().change_scene_to_file("res://dissolve/dissolve.tscn")


func _on_scanline_pressed() -> void:
	get_tree().change_scene_to_file("res://scanline/scanline.tscn")


func _on_outline_pressed() -> void:
	get_tree().change_scene_to_file("res://outline/outline.tscn")
