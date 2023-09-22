#version 400 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTextureCoordinate;

out vec2 ourTextureCoordinate;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
	// note that we read the multiplication from right to left
	gl_Position = projection * view * model * vec4(aPos, 1.0f);
	ourTextureCoordinate = aTextureCoordinate;
}