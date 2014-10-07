#include <gb/gb.h>
#include <stdio.h>

#define WIDTH 20
#define HEIGHT 17

void main() {
	int i, j;
	for (i = 0; i < WIDTH*HEIGHT; ++i){
		printf("%c", i);
		waitpad(J_UP);
		waitpadup();
	}
}

