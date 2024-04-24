// fragment shader
#version 120

uniform sampler3D Tex0;
uniform vec3 resolution;
uniform int zCount;

int get(int x, int y, int z) {
	return int(texture3D(Tex0, (gl_FragCoord.xyz + vec3(x, y, zCount -z)) / resolution).r);
}

void main() {
	gl_FragColor = vec4(get(0,0,0));
}
