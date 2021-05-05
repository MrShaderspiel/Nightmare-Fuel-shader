#version 120

uniform sampler2D colortex4;

varying vec2 texcoord;
varying vec4 glcolor;

void main() {
	vec4 color = texture2D(colortex4, texcoord) * glcolor;

/* DRAWBUFFERS:0 */
	gl_FragData[0] = color;
}
