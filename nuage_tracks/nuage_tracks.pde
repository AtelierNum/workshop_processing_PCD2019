int maxPoints = 10;
float x1, y1;

void setup() {
  size(800, 800);
  background(255);
  x1 = mouseX;
  y1 = mouseY;
}

void draw() {
  noStroke();
  fill(255,5);
  rect(0,0,width,height);

  if (mousePressed) {
    for ( int i = 0; i < maxPoints; i ++) {
      float x = mouseX + random(-30, 30) * cos(15 + i);
      float y = mouseY + random(-30, 30) * sin(15 + i);
      float track = random(5);
      fill(60, 10, 0);
      ellipse(x, y, 2, 2);
      if (track < 1) {
        stroke(0);
        strokeWeight(0.2);
        line(x1, y1, x, y);
      }
      x1 = x;
      y1 = y;
    }
  }
}
