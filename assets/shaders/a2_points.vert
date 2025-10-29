#version 330 core

layout(location = 0) in vec2 a_pos;
layout(location = 1) in vec3 a_col;

uniform mat4 u_mvp;

out vec3 v_col;

void main()
{
    v_col = a_col;
    gl_Position = u_mvp * vec4(a_pos, 0.0, 1.0);
    gl_PointSize = 3.0;
}
