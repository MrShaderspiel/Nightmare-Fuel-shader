#version 120

uniform sampler2D lightmap;
uniform sampler2D gaux1;

varying vec2 lmcoord;
varying vec2 texcoord;
varying vec4 glcolor;

void main() {
	vec4 color = texture2D(gaux1, texcoord*8.0f) * glcolor;
	color *= texture2D(lightmap, lmcoord);

/* DRAWBUFFERS:0 */
	gl_FragData[0] = vec4(color.rgb, 0.5f);
}