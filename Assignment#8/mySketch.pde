/**
 * Bounce.
 *
 * When the shape hits the edge of the window, it reverses its direction.
 */
float currentx, currenty, startx, starty, stopx, stopy; // also self explanitory
float speed, percentage; // self explanatory
boolean fire=false; // to see if the bullet is fired
int rad = 30;        // Width of the shape
float xpos, ypos;    // Starting position of shape
float xspeed = 2.8;  // Speed of the shape
float yspeed = 2.2;  // Speed of the shape
int xdirection = 1;  // Left or Right
int ydirection = 1;// Top to Bottom
int BAD = 5; // Bullet Radius
boolean reload=false; // little extra thing
int magizine = 9;

void setup()
{
  //fullScreen();
  size(640, 360);
  noStroke();
  frameRate(60);
  smooth();
  ellipseMode(RADIUS); // Set the starting position of the shape
  xpos = width/2;
  ypos = height/2;
  startx= width/2;
  starty = height/2;
  speed =0.1;
  percentage =0;
}

void draw() {
  background(102);
  if (fire==true) {
    currentx = lerp(startx, stopx, percentage);
    currenty = lerp(starty, stopy, percentage);
    percentage += speed;
    ellipse(currentx, currenty, BAD, BAD);
  }

  rect(width/2, height/2, 15, 15);
  xpos = xpos + ( xspeed * xdirection ); // Update the position of the shape
  ypos = ypos + ( yspeed * ydirection ); // Update the position of the shape

  if (dist(xpos, ypos, currentx, currenty) < 50) {
    xpos = random(0, width);
    ypos = random(0, height);
    fire=false;
    percentage=0;
  }
  if (xpos > width-rad || xpos < rad) { // Test to see if the shape exceeds the boundaries of the screen
    xdirection *= -1;                   // If it does, reverse its direction by multiplying by -1
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }
  ellipse(xpos, ypos, rad, rad);  // Draw the shape


  if (currenty < 0 || currenty > height || currentx > width ||  currentx < 0) {
    fire=false;
    percentage=0;
  }
  println(magizine-1);

  if (reload == true) {
    println("reload");
    fire = false;
    magizine = 9;
    reload = false;
  }
}

void mousePressed() {
  if (fire==false) {
    fire=true;
    stopx = mouseX;
    stopy = mouseY;
    magizine = magizine - 1;
    if (magizine == 0) {
      reload = true;
    }
  }
	
}
