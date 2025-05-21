shader_type canvas_item;

uniform float height = 5.0;
uniform float frequency = 10.0;
uniform float speed = 4.0;

void vertex() {
	VERTEX.y += height * sin((TIME * speed) + (frequency * UV.x));
}
