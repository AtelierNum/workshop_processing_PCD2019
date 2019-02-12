int branch_number = 12;

void setup(){
  fullScreen(); 
  background(0,0,0);  
  noStroke();
} 

void draw(){
  fill(255,255,255,80);
  
  float radius = sqrt( pow(width/2-mouseX,2) + pow(height/2-mouseY,2));
  float angle = atan2(height/2-mouseY, width/2-mouseX);
  
  
  for (float i = 0 ; i < TWO_PI ; i = i +PI/(branch_number/2)){
    
    float x = width/2 + radius * cos(angle +i);
    float y = height/2 + radius * sin(angle+i);
    
    ellipse(x,y,3,3);
  }
     
}
