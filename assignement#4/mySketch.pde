int Mouse = 0;

float[] y = new float[20];
float[] x = new float[20];

void setup() {
  size(600, 600);
}

void draw(){
  background(#B4B4B4);
  if (Mouse == 20) {
    fill(255);
    stroke(0);
    ellipse(width/2, height/2, 30, 30);
    for (int c=0; c<19; c+=1) {
      line(width/2, height/2, x[c], y[c]);
      ellipse(x[c], y[c], 10, 10);
    }
    ellipse(width/2, height/2, 30, 30);
  }
}

void mousePressed() {
  if (Mouse < x.length) {
    x[Mouse] = mouseX;
    y[Mouse] = mouseY;
    Mouse++;
  }
}
