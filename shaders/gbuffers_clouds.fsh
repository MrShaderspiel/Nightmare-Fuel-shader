
#version 120

uniform sampler2D texture;
uniform sampler2D gaux1;

varying vec2 texcoord;
varying vec4 glcolor;

void main() {
	vec4 color = texture2D(gaux1, texcoord*24.0f) * glcolor;

/* DRAWBUFFERS:0 */
	gl_FragData[0] = color; //gcolor
}