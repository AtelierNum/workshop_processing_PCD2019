void setup() {
  size(800, 800);
  background(0);
  strokeWeight(0.7);
  stroke(255);
  noFill();
}

void draw() {
  pushStyle();
  fill(0, 10);
  noStroke();
  rect(0, 0, width, height);
  popStyle();

  float radiusX = map(mouseX, width/2, width, 10, 1200);
  float radiusY = map(mouseY, height/2, height, 10, 1200);
  noFill();


  for (float i = 0; i < TWO_PI; i = i + PI/8) {
    float x = width/2 + radiusX * cos(20 +i);
    float y = height/2 + radiusY * sin(20+i);
    ellipse(x, y, 2, 2);
  }    
}
