int elements = 30;

void setup() {
  size(800, 800);
  background(0);
  smooth();
  noStroke();
}

void draw() {
  background(0);


  for (int x = 0; x < elements * 1.5; x ++) {
    for (int y = 0; y < elements * 1.5; y ++) {
      float posx = width / elements * x ;
      float posy = height / elements * y ;

      fill(255);
      ellipse(posx, posy, 30, 30);
    }
  }
  
  for (int x = 1; x < elements; x ++) {
    for (int y = 1; y < elements; y ++) {
      float dirx = 1, diry = 1;
      if (x % 2 == 0) dirx = -1;
      if ( y % 3 == 0) diry = -1;
      float posx = width / elements * x ;
      float posy = height / elements * y ;
      float offX = mouseX/30 * dirx ;
      float offY =  mouseY/30 * diry;

      /*fill(180, 20, 10, 100);
      ellipse(posx, posy, 30, 30);*/

      fill(0);
      ellipse(posx + offX, posy + offY, 20, 20);
    }
  }
}
