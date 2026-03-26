PImage Lily_idle1;
PImage Lily_idle2;
PImage Piers_idle;
PImage Pier_idle2;
float viewportTwoX;
float viewportTwoY;
float viewportWidth;
float viewportHeight;
boolean p2 = false;
boolean sprint = false;
boolean sprint2 = false;
boolean aiSprint = false;
int playerSpeed = 5; // speed 5 is default
int playerWidth = 30;
int playerHeight = 50;
int playerX = width/2 - playerWidth/2;
int playerY = height/2 - playerHeight/2;
int aiSpeed = 5; // speed 5 is default
int aiWidth = 30;
int aiHeight = 50;
int aiX = width/2 - aiWidth/2;
int aiY = height/2 - aiHeight/2;
int player2Speed = 5; // speed 5 is default
int player2Width = 30;
int player2Height = 50;
int player2X = width/2 - playerWidth/2;
int player2Y = height/2 - playerHeight/2;


void setup() {
	Lily_idle = requestImage("Lily_idle_Big_1.png");
	Lily_idle = requestImage("Lily_idle_Big_2.png")
  smooth();
  fullScreen();
  viewportTwoX = width/2;
  viewportTwoY = 0;
  viewportWidth = width/2;
  viewportHeight = height;
}

void draw() {
  background(255);
  drawViewportOne(); // leading player
  drawViewportTwo();
}

void drawViewportOne() {
	 translate((width/2)-playerX, (height/2)-playerY);
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

  if (kd[0] == false) {
    if (kd[1] == false) {
      if (kd[2] == false) {
        if (kd[3] == false) {
				}
      }
    }
  }
  int spacing=50;
  //creates the horizontal lines
  for (int y=0; y<height/spacing; y++) {
    line(0, y*spacing, width, y*spacing);
  }
  //create the vertical lines
  for (int x=0; x<width/spacing; x++) {
    line(x*spacing, 0, x*spacing, height);
  }

  if (sprint == true) {
    playerSpeed = 9;
  }
  if (sprint == false) {
    playerSpeed = 5;
  }
  rect(playerX, playerY, playerWidth, playerHeight); // player entity :D
}

void drawViewportTwo() {
  if (p2 == false) {
    ellipse(aiX - 10, aiY - 10, aiWidth, aiHeight); // player entity :D
    if (kd[0]) {
      aiX -= aiSpeed;
    }
    if (kd[1]) {
      aiY += aiSpeed;
    }
    if (kd[2]) {
      aiX += aiSpeed;
    }
    if (kd[3]) {
      aiY -= aiSpeed;
    }
    if (aiSprint == true) {
      aiSpeed = 9;
    }
    if (aiSprint == false) {
      aiSpeed = 5;
    }
  }

  if (p2 == true) {
    if (kd[4]) {
      player2X -= player2Speed;
    }
    if (kd[5]) {
      player2Y += player2Speed;
    }
    if (kd[6]) {
      player2X += player2Speed;
    }
    if (kd[7]) {
      player2Y -= player2Speed;
    }

    if (kd[4] == false) {
      if (kd[5] == false) {
        if (kd[6] == false) {
          if (kd[7] == false) {
          }
        }
      }
    }

    if (sprint2 == true) {
      player2Speed = 9;
    }
    if (sprint2 == false) {
      player2Speed = 5;
    }
    ellipse(player2X, player2Y, player2Width, player2Height); // player 2 entity :D
  }
}



void keyPressed() {
  k(true);
  if (keyCode == SHIFT) {
    sprint = true;
    aiSprint = true;
  }
  if (p2 == true) {
    if (keyCode == CONTROL) {
      sprint2 = true;
    }
  }
  if (keyCode == ENTER) {
    p2 = true;
    player2X = aiX;
    player2Y = aiY;
  }
  if (key == 'x' || key == 'X') {
    p2 = false;
    aiX = player2X;
    aiY = player2Y;
  }
}


void keyReleased() {
  k(false);
  if (keyCode == SHIFT) {
    sprint = false;
    aiSprint = false;
  }
  if (keyCode == CONTROL) {
    sprint2 = false;
  }
}

int[] ks = {'a', 's', 'd', 'w', LEFT, DOWN, RIGHT, UP};
boolean[] kd = {false, false, false, false, false, false, false, false};

void k(boolean b) {
  for (int i = 0; i < ks.length; i++) {
    if (ks[i] == key || ks[i] == keyCode) kd[i] = b;
  }
}
