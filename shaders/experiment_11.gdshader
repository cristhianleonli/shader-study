shader_type canvas_item;

uniform float size: hint_range(0.0, 1.0) = 0.5;

void fragment() {
	float circle = step(distance(UV, vec2(0.5, 0.5)), 0.05);
	float outer_ring = step(distance(UV, vec2(0.5, 0.5)), 0.5);
	float inner_ring = step(distance(UV, vec2(0.5, 0.5)), 0.47);
	float crossout = min(step(distance(UV.x, 0.5), 0.1) + step(distance(UV.y, 0.5), 0.1), 1.0);
	
	COLOR.a = circle + max(outer_ring - inner_ring - crossout, 0.0);
	COLOR.rbg = vec3(1.0);
}
