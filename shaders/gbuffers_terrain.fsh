#version 120

uniform sampler2D lightmap;
uniform sampler2D colortex4;

varying vec2 lmcoord;
varying vec2 texcoord;
varying vec4 glcolor;

void main() {
	vec4 color = texture2D(colortex4, vec2(texcoord.x*64, texcoord.y*32)) * glcolor;
	color *= texture2D(lightmap, lmcoord);

/* DRAWBUFFERS:0 */
	gl_FragData[0] = color;
}
