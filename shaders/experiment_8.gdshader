shader_type canvas_item;

uniform float exposed: hint_range(0.0, 1.0);
uniform vec4 color: source_color;

void fragment() {
	float mid = (COLOR.r + COLOR.g + COLOR.b) / 3.0;
	COLOR.xyz = vec3(mid);
}
