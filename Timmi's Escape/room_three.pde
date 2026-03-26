class room3 {
  float display;
  float borders;
  room3() {
  }
  void display() {
    fill(#989898);
    rect(35, 440, 700, 100);

    fill(#989898);
    rect(700, 440, 100, 740);

    fill(#989898);
    rect(700, 1080, -700, 100);

    fill(#484646);
    rect(35, 555, 600, 500);

    image(door, 630, 390);

    if (playerX == 620){
    image(z, playerX+10, playerY + 70);
    if (keyPressed) {
      if (key == 'z' || key == 'Z') {
        P1chk = true;
      }
    }
  }
  
  if (P1chk == true){
    fill(255);
    text("DO NOT LET TIMMIS OUT, IF SO THE WORLD WILL BE DOOMED ", playerX - 20, playerY - 20);
    if (keyPressed) {
      if (key == 'z' || key == 'Z') {
        P1chk = false;
        END = true;
      }
    }
  }
  
}

void borders() {
  if (playerX < 0) playerX = 0;
  if (playerX > 745 - playerWidth) playerX = 745 - playerWidth;
  if (playerY < 450) playerY = 450;
  if (playerY < 810) {
    if (playerX < 640) {
      if (playerY > 505 - playerHeight)playerY = 505 - playerHeight;
    }
  }

  if (playerY > 1200 - playerHeight) playerY = 1200 - playerHeight;
}
}
