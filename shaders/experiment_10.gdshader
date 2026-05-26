shader_type canvas_item;

uniform float progress: hint_range(0.0, 1.0, 0.1) = 0.5;

void fragment() {
	// 0=>0, 1=>2, 0.5=>1
	float diagonal = (UV.y + UV.x) / 2.0;
	COLOR.a *= step(progress, diagonal);
}
