
/**
 COMP1010SECTION[D01]
 *INSTRUCTOR:[Dr. Heather Matheson]
 *NAME:[Dipesh shah]
 *ASSIGNMENT:[Assignment1]
 *QUESTION:[question1]
 *PURPOSE:[Drawing an insect]
 */

size (500,500);
final int SIZE=300, X_CENTRE = 250, Y_CENTRE = 250, body_width = SIZE/10, body_height=300,head_width=body_width, head_height=head_width, spacing = 80;
int head_center_X= X_CENTRE, head_center_Y = Y_CENTRE-(SIZE/2);
final int wingR1_X = X_CENTRE+(body_width/2), wingR_Y= Y_CENTRE-(body_height/4);                 
final int wingR2_X = wingR1_X, wingR2_Y = wingR_Y+(body_height/4);     
final int wingR3_X = wingR2_X, wingR3_Y = wingR2_Y+(body_height/4);  
final int wingL1_X = X_CENTRE-(body_width/2), wingL1_Y= Y_CENTRE-SIZE/4;                  
final int wingL2_X = wingL1_X, wingL2_Y= wingL1_Y+(body_height/4); 
final int wingL3_X = wingL1_X, wingL3_Y= wingL2_Y+(body_height/4); 
fill(255,0,0);                                                                                                          // this fills the main boly with red color
rect (X_CENTRE-(body_width/2), Y_CENTRE-(body_height/2),body_width,body_height);                                                  //body
noFill();
line (head_center_X,head_center_Y, wingL1_X-2*spacing,wingL1_Y-2*spacing);                                                      //antennae left
line (head_center_X,head_center_Y, wingR1_X+2*spacing,wingR_Y-2*spacing);                                                      //antennae right
fill (0,255,0);
ellipse (X_CENTRE,Y_CENTRE-(SIZE/2),head_width,head_height);                                                                    //head
noFill();
fill(0,0,255);                                                                                                              // this fills the wings with blue color
triangle (wingR1_X,wingR_Y,wingR1_X+spacing,wingR_Y+spacing,wingR1_X+spacing, wingR_Y-spacing);                                 // first Right wing
triangle (wingR2_X,wingR2_Y,wingR2_X+spacing,wingR2_Y+spacing,wingR2_X+spacing, wingR2_Y-spacing);                           //second right wing
triangle (wingR3_X,wingR3_Y,wingR3_X+spacing,wingR3_Y+spacing,wingR3_X+spacing, wingR3_Y-spacing);                           //third right wing
triangle (wingL1_X,wingL1_Y,wingL1_X-spacing,wingL1_Y-spacing,wingL1_X-spacing, wingL1_Y+spacing);                            // first left wing
triangle (wingL2_X,wingL2_Y,wingL2_X-spacing,wingL2_Y-spacing,wingL2_X-spacing, wingL2_Y+spacing);                           // Second left wing
triangle (wingL3_X,wingL3_Y,wingL3_X-spacing,wingL3_Y-spacing,wingL3_X-spacing, wingL3_Y+spacing);                             // third left wing
