#version 120

uniform sampler2D lightmap;
uniform sampler2D colortex4;
uniform vec4 entityColor;

varying vec2 lmcoord;
varying vec2 texcoord;
varying vec4 glcolor;

void main() {
	vec4 color = texture2D(colortex4, vec2(texcoord.x*8.0f, texcoord.y*4.0f)) * glcolor;
	color *= texture2D(lightmap, lmcoord);
	color *= vec4(entityColor.xyz+1.0f, 0.1f);

/* DRAWBUFFERS:0 */
	gl_FragData[0] = color;
}
