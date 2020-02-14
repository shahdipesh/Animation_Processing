float centerX=random (200,400),centerY= random(200,400),theta = random(PI);
final float d1= 30,d2=60, phi = 0.2*PI;                                                                  
float headY, headX,bottomRX,bottomRY,bottomLX,bottomLY,alpha = theta + phi, beta = -(phi-theta);            


void setup() {
 background (0); 
 size (500,500);
 stroke (0);
}
                                              
void draw() {
  calcPoints();
  drawShip();
}

 void calcPoints(){
   headY = centerY+d1*sin(theta);
   headX = centerX+d1*cos(theta);
   bottomRX = centerX+d2*cos(alpha);
   bottomRY = centerY+d2*sin(alpha);
   bottomLX = centerX+d2*cos(beta);
   bottomLY  = centerY+d2*sin(beta);
 }
 
  void drawShip(){
fill (255,0,0);
 quad (headX,headY,bottomRX,bottomRY,centerX,centerY,bottomLX,bottomLY);

    
     
    
  }
