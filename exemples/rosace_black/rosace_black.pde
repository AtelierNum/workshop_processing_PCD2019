void setup(){
  size(800,800);
  background(0);
  strokeWeight(10);
  stroke(255);
}

void draw(){
  pushStyle();
  fill(0,10);
  noStroke();
  rect(0,0,width,height);
  popStyle();
  
  if (mousePressed){
    float radius = width/2 - mouseX;
    float angle = map (mouseY,0,height,0,TWO_PI);
         for (float i = 0 ; i < TWO_PI ; i = i + PI/8){
          float x = width/2 + radius * cos(angle +i);
          float y = height/2 + radius * sin(angle+i);
          ellipse(x,y,2,2);
        }    
}
}
