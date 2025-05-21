extends Sprite2D


func _on_color_picker_color_changed(color: Color) -> void:
	(material as ShaderMaterial).set_shader_parameter("replacement_color", color)
