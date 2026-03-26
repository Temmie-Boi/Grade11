/*
CHANGELOG 
5/14/2024: CREATION OF THE MOVEMENT SYSTEM TEMPLATE
5/14/2024: ADDED SPRINT SYSTEM
5/15/2024: ADDED A PAUSE SCREEN 
*/

boolean paused = false;
boolean sprint = false;
int playerSpeed = 5; // speed 5 is default
int playerWidth = 20;
int playerHeight = 50;
int playerX = width / 2 - playerWidth / 2;
int playerY = height / 2 - playerHeight / 2;


void setup() {
	size(600, 600);
	smooth();
}


void draw() {
	background(#FAF7F7);
	translate((width / 2) - playerX, (height / 2) - playerY);

	if (paused == false) {
		if (kd[0]) {
			playerX -= playerSpeed;
		}
		if (kd[1]) {
			playerY += playerSpeed;
		}
		if (kd[2]) {
			playerX += playerSpeed;
		}
		if (kd[3]) {
			playerY -= playerSpeed;
		}
	}




	if (kd[0] == false) {
		if (kd[1] == false) {
			if (kd[2] == false) {
				if (kd[3] == false) {}
			}
		}
	}
	int spacing = 50;
	//creates the horizontal lines
	for (int y = 0; y < height / spacing; y++) {
		line(0, y * spacing, width, y * spacing);
	}
	//create the vertical lines
	for (int x = 0; x < width / spacing; x++) {
		line(x * spacing, 0, x * spacing, height);
	}

	if (sprint == true) {
		playerSpeed = 9;
	}
	if (sprint == false) {
		playerSpeed = 5;
	}
	rect(playerX, playerY, playerWidth, playerHeight); // player entity :D
	println(paused);
		if (paused == true){
		image
	}
	
}



void keyPressed() {
	k(true);
	if (key == 'p' || key == 'P') {
		paused = !paused;
	}
	if (keyCode == SHIFT) {
		sprint = true;
	}
}


void keyReleased() {
	k(false);
	if (keyCode == SHIFT) {
		sprint = false;
	}
}

int[] ks = {
	'a',
	's',
	'd',
	'w'
};
boolean[] kd = {
	false,
	false,
	false,
	false
};

void k(boolean b) {
	for (int i = 0; i < ks.length; i++) {
		if (ks[i] == key || ks[i] == keyCode) kd[i] = b;
	}
}
