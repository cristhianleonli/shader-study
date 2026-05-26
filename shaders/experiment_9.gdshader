shader_type canvas_item;

uniform vec2 center = vec2(0.5, 0.5);
uniform float radius = 0.3;
uniform vec3 color: source_color;

void fragment() {
	float alpha = step(distance(UV, center), radius);
	vec3 circle = vec3(color.r, color.g, color.b);
	COLOR.rgb = mix(COLOR.rgb, circle, 0.5);
	COLOR.a = alpha;
}