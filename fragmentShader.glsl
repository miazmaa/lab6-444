#version 300 es

precision mediump float;

in vec3 vNormal;

uniform vec3 lightDirection;

out vec4 fColor;

void main()
{
    vec3 N = normalize(vNormal);

    float diffuse =
        max(dot(N, normalize(lightDirection)), 0.0);

    vec3 ambient = vec3(0.2);

    vec3 color =
        ambient +
        diffuse * vec3(0.8);

    fColor = vec4(color, 1.0);
}