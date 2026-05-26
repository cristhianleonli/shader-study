shader_type canvas_item;

uniform vec4 line_color: source_color = vec4(1.0);
uniform float line_thickness: hint_range(0.0, 1.0) = 1.0;
const float max_line_thickness = 4.0;

void fragment() {
	vec2 size = TEXTURE_PIXEL_SIZE * line_thickness;
	vec4 color = texture(TEXTURE, UV);
	
	float outline = color.a;
	outline += texture(TEXTURE, UV + vec2(size.x, 0)).a;
	outline += texture(TEXTURE, UV + vec2(-size.x, 0)).a;
	outline += texture(TEXTURE, UV + vec2(0, size.y)).a;
	outline += texture(TEXTURE, UV + vec2(0, -size.y)).a;
	outline = clamp(outline, 0.0, 1.0);
	
	COLOR = mix(color, line_color, outline - color.a);
}
