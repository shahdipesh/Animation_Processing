size (500,500);
final int width = 20, size=300, X_CENTRE = 250, Y_CENTRE = 250, head_width=40, head_size=10, spacing = 80;
int head_center_X= X_CENTRE, head_center_Y = Y_CENTRE-(size/2);
final int wingR1_X = X_CENTRE+(width/2), wingR_Y= Y_CENTRE-size/4;                 
final int wingR2_X = wingR1_X, wingR2_Y = Y_CENTRE+size/4;                          
final int wingL1_X = X_CENTRE-(width/2), wingL1_Y= Y_CENTRE-size/4;                  
final int wingL2_X = wingL1_X, wingL2_Y= Y_CENTRE+size/4;                         
fill(255,0,0);
rect (X_CENTRE-(width/2), Y_CENTRE-(size/2),width,size);                              //body
noFill();
line (head_center_X,head_center_Y, wingL1_X-2*spacing,wingL1_Y-2*spacing);              //antennae left
line (head_center_X,head_center_Y, wingR1_X+2*spacing,wingR_Y-2*spacing);                //antennae right
fill (0,255,0);
ellipse (X_CENTRE,Y_CENTRE-(size/2),head_width,head_size);                                //head
noFill();
fill(0,0,255);
triangle (wingR1_X,wingR_Y,wingR1_X+spacing,wingR_Y+spacing,wingR1_X+spacing, wingR_Y-spacing);             //// first Right wing
triangle (wingR2_X,wingR2_Y,wingR2_X+spacing,wingR2_Y+spacing,wingR2_X+spacing, wingR2_Y-spacing);          ///second right wing
triangle (wingL1_X,wingL1_Y,wingL1_X-spacing,wingL1_Y-spacing,wingL1_X-spacing, wingL1_Y+spacing);              //// first left wing
triangle (wingL2_X,wingL2_Y,wingL2_X-spacing,wingL2_Y-spacing,wingL2_X-spacing, wingL2_Y+spacing);               //// Second left wing
