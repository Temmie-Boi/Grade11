class room1 {
  float display;
  float pushh;
  float Borders;
  float him;
  float Vent;
  room1() {
  }


  void display() {
    noStroke();
    fill(#BCB6B6);
    rect(0, 0, 500, 370);
    image(photo, 0, 0);

    image(Wall, 0, -200);
    fill(#cfd8dc);
    rect(500, -200, 20, 570);
    rect(0, -200, -20, 570);
    rect(0, 370, 500, 20);

    noFill();
    rect(rectX, rectY, 40, 40);
    image(Cabinet, rectX, rectY);

    noFill();
    rect(D1X, D1Y, -30, -50);
    image(door, D1X, D1Y, -30, -50);

    noFill();
    rect(V1X, V1Y, 40, -20);
    image(vent, V1X, V1Y, 40, -20);

    noFill();
    rect(ToolboxX, ToolboxY, 39, 19);
    image(ToolBox, ToolboxX, ToolboxY);

    noFill();
    rect(BedX, BedY, -80, 40);
    image(bed, BedX, BedY, -80, 40);

    noFill();
    rect(playerX, playerY, playerWidth, playerHeight);
  }

  void him() {
    if (P1chk ==true) {
      
    }

    if (kd[0]) {
      playerX -= playerSpeed;
      image(Tside2, playerX, playerY);
    }
    if (kd[1]) {
      playerY += playerSpeed;
      image(FPlayerIdle, playerX, playerY);
    }
    if (kd[2]) {
      playerX += playerSpeed;
      image(Tside, playerX, playerY);
    }
    if (kd[3]) {
      playerY -= playerSpeed;
      image(Tback, playerX, playerY);
    }

    if (kd[0] == false) {
      if (kd[1] == false) {
        if (kd[2] == false) {
          if (kd[3] == false) {
            image(FPlayerIdle, playerX, playerY);
          }
        }
      }
    }
  }





  void pushh() {
    if (keyPressed) {
      if (key == 'z' || key == 'Z') {
        // Calculate distance between player and cabinet's right edge
        float distanceToCabinet = dist(playerX, playerY, rectX + 40, rectY);

        // Check if the player is close enough to the cabinet and aligned vertically with it
        if (distanceToCabinet <= 20 && abs(playerY - rectY) < 10) {
          if (rectX > 125) { // Check if the cabinet is not already at 125
            rectX -= 1;
            playerX -= 1;
          }
        }
      }
    }


    float distanceToCabinet = dist(playerX, playerY, rectX + 40, rectY);

    if (distanceToCabinet <= 20 && abs(playerY - rectY) < 10) {
      noFill();
      rect(playerX + 5, playerY - 15, 10, 10);
      image(z, playerX+5, playerY - 15);
    }


    if (playerY == rectY-50) {
      image(z, playerX + 10, playerY -15);
    }
    if (rectX ==125) {
      if (playerX <= rectX) {
        if (playerY >= rectY) {
          playerY = rectY + 40;
          playerX = rectX;
          image(z, playerX+10, playerY + 70);
          if (keyPressed == true) {
            if (key=='z' || key=='Z') {
              playerY = rectY - 30;
              Rm1 = false;
              Rm2 = true;
            }
          }
        }
      }
    }
  }

  void Vent() {
    if (rectX == 125) {
      if (playerY >= -32) {
        image(z, playerX+10, playerY+15);
      }
    }
  }


  void Borders() {
    if (playerX < 0) playerX = 0;
    if (playerX > width - playerWidth) playerX = width - playerWidth;
    if (playerY < -30) playerY = -30;
    if (playerY > 370 - playerHeight) playerY = 370 - playerHeight;
  }
}
