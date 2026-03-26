class room2 {
  float display;
  float borders;
  room2() {
  }

  void display() {
    fill(#585858);
    rect(0, 0, 100, 450);
    rect(25, 450, 50, 50);

    fill(#6C6C6C);
    rect(0, 0, 100, -200);

    image(vent, 35, -50);

    if (playerY > 415) {
      if (keyPressed) {
        if (key == 'z' || key == 'Z') {
          Rm3 = true;
          Rm2 = false; 
        }
      }
    }
  }

    void borders() {
      if (playerX < 0) playerX = 0;
      if (playerX > 75 - playerWidth) playerX = 75 - playerWidth;
      if (playerY < 0) playerY = 0;
      if (playerY > height - playerHeight) playerY = height - playerHeight;
    }
}
  
