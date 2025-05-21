extends CanvasLayer


func _on_vertex_pressed() -> void:
	get_tree().change_scene_to_file("res://vertex/grass.tscn")


func _on_fragment_pressed() -> void:
	get_tree().change_scene_to_file("res://fragment/color_replacement.tscn")


func _on_wavy_text_pressed() -> void:
	get_tree().change_scene_to_file("res://wavy-text/wavy_text.tscn")
