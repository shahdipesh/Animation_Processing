
/*
 *COMP1010SECTION[D01]
 *INSTRUCTOR:[Dr. Heather Matheson]
 *NAME:[Dipesh Shah]
 *ASSIGNMENT:[Assignment1]
 *QUESTION:[Question2]
 *PURPOSE:[Controlling both size and position of butterfly]
 */

final float SIZE_START = 100, SIZE_END = 400,  SPEED_FACTOR = 150;
float body_X, size, body_Y, body_width, body_height, head_width, head_height, spacing, head_center_X, head_center_Y;
float X_CENTRE, Y_CENTRE, X_START, Y_START, X_END, Y_END,xChange,yChange; 
float wingR1_X, wingR2_X, wingR3_X, wingL1_X, wingL2_X, wingL3_X, wingR1_Y, wingR2_Y, wingR3_Y, wingL1_Y, wingL2_Y, wingL3_Y;


void setup() {
  size (500, 500);
}


void draw() {
  strokeWeight(2);
  background(125);
  calcDimensions();
  setsizeXandY();
  drawbody();
  drawAntennae();
  drawHead();
  drawWings();
}

/*
 *[This function sets the default position of the butterfly when clicked]
 *[It sets the deault value for centre of butterfly and end co-ordinates for the butterfly]
 */


void mouseClicked() {
  X_CENTRE = 0;
  Y_CENTRE = height;
  X_END= width;
  Y_END =0;
}

void  setsizeXandY() {
  xChange= (X_END-body_X)/SPEED_FACTOR;
  yChange=(Y_END-body_Y)/SPEED_FACTOR;
  size = SIZE_START*X_CENTRE/height;
  X_CENTRE = X_CENTRE + xChange; 
  Y_CENTRE = Y_CENTRE + yChange;

};

/*
 [This function calculates the dimensions of different parts of butterfly]
 *[At first it defines the starting point of the body of the main body of butterfly and then calculates the coordinates of other parts with respect to that]
 */

void calcDimensions() {

  body_X = X_CENTRE-(body_width/2);                                                       // x-coordinate of main body
  body_Y =Y_CENTRE-(body_height/2);                                                        //y-coordinate of main body
  body_width =size/10;                                                                    //width of main body
  body_height=size;                                                                        //height of main body
  head_width= body_width;                                                                  //width of head
  head_height=head_width; 
  spacing = size/4;
  head_center_X= X_CENTRE;
  head_center_Y = Y_CENTRE-(body_height/2);
  wingR1_X = X_CENTRE+(body_width/2);                                                       // first right wing
  wingR1_Y= Y_CENTRE-(body_height/4);                 
  wingR2_X = wingR1_X; 
  wingR2_Y = wingR1_Y+(body_height/4);     
  wingR3_X = wingR2_X;
  wingR3_Y = wingR2_Y+(body_height/4);  
  wingL1_X = X_CENTRE-(body_width/2);                                                        //first left wing
  wingL1_Y= wingR1_Y;                 
  wingL2_X = wingL1_X;
  wingL2_Y=  wingR2_Y ; 
  wingL3_X = wingL1_X;
  wingL3_Y=    wingR3_Y ;

} 

/*
 *[This functions draws the body of the main body butterfly]
 *[It produces graphics]
 *[It gets its information from global variables]
 *[It takes the starting point of the main-body of butterfly and creates the main body ]
 */

void drawbody() {
  fill(255, 0, 0);
  rect (body_X, body_Y, body_width, body_height);
}

/*
 *[This function draws antennae of the butterfly]
 *[It produces graphics]
 *[It gets its information from global variables]
 *[It takes the starting point of the main-body of butterfly and creates the main body]
 */

void drawAntennae() {
  line (head_center_X, head_center_Y, wingL1_X-2*spacing, wingL1_Y-2*spacing);                                            
  line (head_center_X, head_center_Y, wingR1_X+2*spacing, wingR1_Y-2*spacing);
}

/*
 *[This function draws head of butterfly]
 *[It produces graphics]
 *[It gets its information from global variables]

 */

void drawHead() {
  fill (0, 255, 0);
  ellipse (head_center_X, head_center_Y, head_width, head_height);
}

/*
 *[This function draws wings]
 *[It's getting its information from calcDimention() function.]
 *[It produces graphics]
 */

void drawWings() {
  fill(0, 0, 255);
  triangle (wingR1_X, wingR1_Y, wingR1_X+spacing, wingR1_Y+spacing, wingR1_X+spacing, wingR1_Y-spacing);                                 //// first Right wing
  triangle (wingR2_X, wingR2_Y, wingR2_X+spacing, wingR2_Y+spacing, wingR2_X+spacing, wingR2_Y-spacing);                           ///second right wing
  triangle (wingR3_X, wingR3_Y, wingR3_X+spacing, wingR3_Y+spacing, wingR3_X+spacing, wingR3_Y-spacing);                           ///third right wing
  triangle (wingL1_X, wingL1_Y, wingL1_X-spacing, wingL1_Y-spacing, wingL1_X-spacing, wingL1_Y+spacing);                            //// first left wing
  triangle (wingL2_X, wingL2_Y, wingL2_X-spacing, wingL2_Y-spacing, wingL2_X-spacing, wingL2_Y+spacing);                           //// Second left wing
  triangle (wingL3_X, wingL3_Y, wingL3_X-spacing, wingL3_Y-spacing, wingL3_X-spacing, wingL3_Y+spacing);                             //// third left wing
}
