/*
Author's Name: Lorenzo
 Project's Name: Final project w.i.p
 Started: 2024/06/02
 Last edited: 2024/03/06
 */

room1 R1 = new room1();
room2 R2 = new room2();
StartSC S = new StartSC(); 
room3 R3 = new room3();
end E = new end();


void keyPressed() {
  if (key == 'p' || key == 'P') {
  } else {
    k(true);
  }
}

void keyReleased() {
  k(false);
}

int[] ks = { LEFT, DOWN, RIGHT, UP };
boolean[] kd = {false, false, false, false};

void k(boolean b) {
  for (int i = 0; i < ks.length; i++) {
    if (ks[i] == key || ks[i] == keyCode) kd[i] = b;
  }
}

void setup() {
  size(500, 500);
  buttonColor = #A2A2A2;
  textSize(10);
  photo = requestImage("images/pixil-frame-0.png");
  ToolBox = requestImage("images/pixil-frame-0 1.png");
  Cabinet = requestImage("images/pixil-frame-0 2.png");
  bed = requestImage("images/pixil-frame-0 3.png");
  vent = requestImage("images/pixil-frame-0 4.png");
  door = requestImage("images/pixil-frame-0 6.png");
  FPlayerIdle = requestImage("images/timmis.png");
  pausemenu = requestImage("images/pausemenu.png");
  z = requestImage("images/z.png");
  Wall = requestImage("images/wall.png");
  Tportrait = requestImage("images/timmis_portrait.jpg");
  Tback = requestImage("images/Timmis_back.png");
  Tside = requestImage("images/tside.png");
  Tside2 = requestImage("images/tside2.png");
  Paper = requestImage("images/paper.png");
  buttonX = 165;
  buttonY = 160;
  frameRate(60);
  R1 = new room1();
  R2 = new room2();
}



void draw() {

  noStroke();
  background(1);
  translate((width/2)-playerX, (height/2)-playerY);
  if (Start == true) {
    S.Screen();
    S.borders();
		R1.him();
  }
  if (Rm2 == false) {
    if (Rm1 == true) {
      R1.Borders();
      R1.display();
      R1.pushh();
      R1.Borders();
      R1.Vent();
			R1.him();
    }
  }
  if (Rm3 == false) {
    if (Rm2 == true) {
      R2.borders();
      R2.display();
			R1.him();
    }
  }
  if(Rm4 == false){
    if (Rm3 == true){
      R3.borders();
      R3.display();
			R1.him();
    }
  }
  if (END == true){
    E.End();
  }
}
