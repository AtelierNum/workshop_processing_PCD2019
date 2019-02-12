float siz = 0;

void setup() {
  size(1900, 800);
  background(0);
  smooth();
  rectMode(CENTER);
}

void draw() {

  //background
  pushStyle();
  fill(0, 1);
  noStroke();
  rect(0 + width/2, 0 + height/2, width, height);
  popStyle();

  stroke(255);
  noFill();


  if (mousePressed) {
    int limit = int(random(15));
    float radius = 30;

    for (int i = 0; i < limit; i ++) {
      pushMatrix();
      float x = radius * cos(20 + i);
      float y = radius * sin(20 + i);

      if (siz < 3) siz += 0.01;
      else siz += 0.0001;
      translate(mouseX, mouseY);
      rotate(siz * i);
      rect(random(x), random(y), siz, siz);
      popMatrix();
    }
  }
}

void mouseReleased() {
  siz = 0;
}
