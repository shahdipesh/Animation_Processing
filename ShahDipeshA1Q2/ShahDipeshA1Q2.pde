
/**
 COMP1010SECTION[D01]
 *INSTRUCTOR:[Dr. Heather Matheson]
 *NAME:[Dipesh shah]
 *ASSIGNMENT:[Assignment1]
 *QUESTION:[question2]
 *PURPOSE:[Drawing an active insect which changes size with respect to its position]
 */

int SIZE, X_CENTRE, Y_CENTRE, MIN_SIZE, MAX_SIZE;
int body_X, body_Y, body_width, body_height, head_width, head_height, spacing, head_center_X, head_center_Y;
int wingR1_X, wingR2_X, wingR3_X, wingL1_X, wingL2_X, wingL3_X, wingR1_Y, wingR2_Y, wingR3_Y, wingL1_Y, wingL2_Y, wingL3_Y;

void setup() {
  size (500, 500);
}


void draw() {
  strokeWeight(2);
  background(125);
  setsizeXandY();
  calcDimensions();
  drawbody();
  drawAntennae();
  drawHead();
  drawWings();
}

/*
 *[This function sets the center,minimum size and maximum size of the butterfly]
 *[Where does it get information (mouse, keyboard, parameters, global variables)]
 *[The center of object depends on the position of the mouse]
 */

void  setsizeXandY() {
  X_CENTRE = mouseX;
  Y_CENTRE = mouseY;
  MIN_SIZE=40;
  MAX_SIZE=mouseY;
  SIZE= max(MIN_SIZE, MAX_SIZE);        // total width of the body with wings
};

/*
 *[This function does the required calculation needed to position the butterfly and to place other components of butterfly in respective position]
 *[It gets its information from global variable]
 */

void calcDimensions() {
  body_X = X_CENTRE-(body_width/2);                                                       // x-coordinate of main body
  body_Y =Y_CENTRE-(body_height/2);                                                        //y-coordinate of main body
  body_width =SIZE/10;                                                                    //width of main body
  body_height=SIZE;                                                                        //height of main body
  head_width= body_width;                                                                  //width of head
  head_height=head_width; 
  spacing = SIZE/4;
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
 *[This function draws the main body of the bitterfly]
 *[It gets its information from global variable]
 *[It produces graphics]
 */

void drawbody() {
  fill(255, 0, 0);
  rect (body_X, body_Y, body_width, body_height);
}

/*
 *[This function draws antennae of butterfly]
 *[It gets its information from global variable]
 *[It produces graphics]
 */

void drawAntennae() {
  line (head_center_X, head_center_Y, wingL1_X-2*spacing, wingL1_Y-2*spacing);                                            
  line (head_center_X, head_center_Y, wingR1_X+2*spacing, wingR1_Y-2*spacing);
}

/*
 *[This function draws head of butterfly]
 *[It gets its information from global variable]
 *[It produces graphics]
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
