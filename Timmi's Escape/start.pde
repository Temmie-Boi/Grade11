class StartSC {
  float Screen;
  float borders;
  StartSC() {
  }

  void Screen() {
    background(#FFFFFF);
 
    fill(1);
    rect(width/2, height/2, 10, 10);
    image(z, playerX+5, playerY - 15);

    if (keyPressed) {
      if (key == 'z' || key == 'Z') {
        Start = false;
        Rm2 = false;
        Rm1 = true;
      }
    }
  }

  void borders() {
    if (playerX < 0) playerX = 0;
    if (playerX > width - playerWidth) playerX = width - playerWidth;
    if (playerY < 0) playerY = 0;
    if (playerY > height - playerHeight) playerY = height - playerHeight;
  }
}
