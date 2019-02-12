int branch_number = 12;

void setup(){
  fullScreen(); 
  background(0,0,0);  
  noStroke();
} 

void draw(){
  fill(255,255,255,80);
  translate(width/2,height/2);
  
  float distX = dist(0,mouseX,0,width/2);
  float distY = dist(mouseY,0,height/2,0);
  
  
  
  for(int i = 0; i<branch_number;i++){

    
   
    rotate(radians(360/branch_number));
    ellipse(distX,distY,3,3);
   
  }
     
}
