#version 300 es
precision mediump float;

out vec4 fragColor;
in vec2 vTexCoord;

void main() {
  float r = vTexCoord.x;
  float g = vTexCoord.y;
  fragColor = vec4(r, g, 0.5, 1.0); //Тунгалаг байдал (a) нь 1.0 буюу бүрэн тунгалаг байдалтай байна.
}
