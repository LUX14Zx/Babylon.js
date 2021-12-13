﻿// Attributes
attribute vec2 position;


uniform vec2 scale;
// Output
varying vec2 vUV;

const vec2 madd = vec2(0.5, 0.5);

void main(void) {

#define CUSTOM_VERTEX_MAIN_BEGIN
	

	vUV = (position * madd + madd) * scale;
	gl_Position = vec4(position, 0.0, 1.0);

#define CUSTOM_VERTEX_MAIN_END
}