/**
 COMP1010SECTION[D01]
 *INSTRUCTOR:[Dr. Heather Matheson]
 *NAME:[Dipesh shah]
 *Student no: [7882947]
 *ASSIGNMENT:[Assignment2]
 *QUESTION:[Question4]
 *PURPOSE:[Completing the space game]
 */

float theta=radians(0), phi=radians(130), length =100, breadth=10;
float centerX, centerY, d1=30, d2=20;
float headX, headY, leftX, leftY, rightX, rightY;
final float SPEED = 2, TURN_SPEED=0.02, SPACING=80;
String status = "straight";                                      //this is a state variable that defines the movement of the spaceship
boolean outOfBound = false;
float red = random (100, 150), green = random(100, 150), blue = random(100, 150);
boolean topBottom=true, bottom =true, gameOver =false;
float R_Position = random (2*SPACING, width-SPACING), rectXOne, rectYOne, rectXTwo, rectYTwo, len, wid;

int randomBoolean;

void setup ()
{
  size (700, 600);
  centerX = 250;
  centerY=250;
}

void draw() {
  if (!gameOver) {
    background (red, green, blue);
    calcDimensions();
    drawShip();
    moveShip();
    checkCollision();
    newDimensions();
  }
}

/*
 * [Here, PtInRect() is called and when it returns a true statement the game is over]
 *[Here the left wing, right wing and head are checked to see if they have collided with the passage]
 *[This concept follows for each 'if-statements' in drawPassage() method]
 *[It gets its information from the global variables and also from PtInRect()]
 */
void checkCollision()
{
  if ((ptInRect(headX, headY, rectXOne, rectYOne, wid, len))||(ptInRect(leftX, leftY, rectXOne, rectYOne, wid, len))||(ptInRect(rightX, rightY, rectXOne, rectYOne, wid, len))) {
    showGameOverMessage();
    gameOver = true;
  }
  if ((ptInRect(headX, headY, rectXTwo, rectYTwo, wid, len))||(ptInRect(leftX, leftY, rectXTwo, rectYTwo, wid, len))||(ptInRect(rightX, rightY, rectXTwo, rectYTwo, wid, len))) {
    showGameOverMessage();
    gameOver = true;
  }
}

/*
 *[This function simply returns true if the spaceship has contacted any of the rectangles ]
 
 */

boolean ptInRect(float x, float y, float left, float top, float wide, float high) {
  if (x>=left && x<=left+wide && y>=top && y<=top+high) {
    return true;
  } else {
    return false;
  }
}
/*
 *[This function shows the game over message ]
 
 */
void showGameOverMessage() {
  fill(255);
  textSize(100);
  textAlign(CENTER, CENTER);
  text("Game Over!", width/2, height/2);
}

/*
 *[This function calls checkBound function to check the bound of the ship ]
 [This function also calls drawPassage function to draw a passage to a new position if it crosses the bound through the passage ]
 *[It gets its information from the global variables]
 */
void newDimensions() {
  checkBound();
  drawPassage();
}

/*
 *[This function draws the passage of the ship]
 [This function draws a new passage each time the spaceship goes out of bound ]
 *[It gets its information from the global variables]
 */
void drawPassage() {

  /*
 *[These blocks draws the passage of the ship at the position as mentioned in the comments]
   *[This function draws a new passage at different position each time the spaceship goes out of bound ]
   *[It gets its information from the global variables]
   */


  if (topBottom == true && bottom ==true) {
    rect (R_Position, height-length, breadth, length);                             //bottom
    rect (R_Position-SPACING, height-length, breadth, length);
    rectXOne = R_Position;
    rectYOne = height-length;
    rectXTwo = R_Position-SPACING;
    rectYTwo =  height-length;
    wid = breadth;
    len = length;
  } else if (topBottom == true && bottom ==false) {
    rect (R_Position, 0, breadth, length);                                    //top
    rect (R_Position-SPACING, 0, breadth, length);
    rectXOne = R_Position;
    rectYOne = 0;
    rectXTwo = R_Position-SPACING;
    rectYTwo =  0;
    wid = breadth;
    len = length;
  }

  if (topBottom == false && bottom ==false) {
    rect (0, R_Position, length, breadth);                                    //left
    rect (0, R_Position-SPACING, length, breadth);
    rectXOne = 0;
    rectYOne = R_Position;
    rectXTwo = 0;
    rectYTwo =  R_Position-SPACING;
    wid = length;
    len = breadth;
    
  } else if (topBottom == false && bottom ==true) {
    rect (width-length, R_Position, length, breadth);                                    //right
    rect (width-length, R_Position-SPACING, length, breadth);
    rectXOne = width-length;
    rectYOne = R_Position;
    rectXTwo = width-length;
    rectYTwo =  R_Position-SPACING;
    wid = length;
    len = breadth;
  }
}

/*
 *[This function checks the bound of the spaceship and changes the background once it goes off the bound ]
 *[It gets its information from the global variables]
 */

void checkBound() {

  if (outOfBound ==true) {


    /*
 *[These blocks checks the status of the position of the spaceship and if it passes througn the passage it changes the background and position of passage]
     *[It gets its information from the global variables]
     */

    if (topBottom ==true ) {
      if (centerX<R_Position && centerX >R_Position-SPACING) {
        randomBoolean= (int) random(2) * 2 - 1;                      // this generates a random value betn -1 and 1
        red = random (100, 200);
        green = random(100, 200);
        blue = random(100, 200);
        background (red, green, blue);
        topBottom =false;
        if (randomBoolean ==1 ) {                                        // random value one sets the bottom boolean to true
          bottom =true;
        } else {
          bottom = false;
        }
      }
    }
    if (topBottom ==false) {
      if (centerY<R_Position && centerY >R_Position-SPACING) {
        randomBoolean= (int) random(2) * 2 - 1;                          // this generates a random value betn -1 and 1
        red = random (100, 200);
        green = random(100, 200);
        blue = random(100, 200);
        background (red, green, blue);
        topBottom =true;
        if (randomBoolean ==1 ) {                                             // random value one sets the bottom boolean to false
          bottom =true;
        } else {
          bottom = false;
        }
      }
    }
  }

  outOfBound =false;
}



/*
 *[This function checks which key is pressed in the keyboard]
 *[It gets its information from the keyboard and changes the status of the spaceship accordingly]
 */

void keyPressed()
{
  if (key=='a'|| key=='j')
  {
    status = "left";
  }
  if (key=='d'|| key=='l')
  {  
    status ="right";
  }
  if (key =='s' || key =='k')
  {
    status = "straight";
  }
}

/*
 *[This function moves the spaceship to the desired direction in circles and straight-line]
 *[It gets its information from global variables]
 */

void moveShip()
{

  centerX=centerX + SPEED*cos(theta);
  centerY= centerY +SPEED* sin (theta);

  /*
 *[These blocks checks the bound of spaceship and sets position for the spaceship once the spaceship goes out of bound]
   *[These blocks also checks the bound of spaceship and generates a random position for the passage once the spaceship goes out of bound]
   *[It gets its information from global variables]
   */

  if (centerX>width)
  {
    outOfBound = true;
    centerX=0;
  }
  if (centerX<0)
  {
    outOfBound = true;
    centerX=width;
  }
  if (centerY>height)
  {
    outOfBound = true;
    centerY=0;
  }
  if (centerY<0)
  {
    outOfBound = true;
    centerY=height;
  }


  /*
 *[This blocks checks the status of the spaceship and change the direction of spaceship accordingly]
   *[It gets its information from global variables]
   */

  if (status.equals("left"))
  {

    theta = theta - TURN_SPEED;
  }
  if (status.equals("right"))
  {
    theta = theta + TURN_SPEED;
  }
}

/*
 *[This function draws the spaceship]
 *[It gets its information from global variables]
 */
void drawShip()
{
  fill (255, 0, 0);
  quad (headX, headY, rightX, rightY, centerX, centerY, leftX, leftY);
}

/*
 *[This function calculates the dimensions of the different parts of the spaceship]
 *[It gets its information from global variables]
 */
void calcDimensions()
{
  headX =centerX+ d1*cos(theta);
  headY = centerY+ d1*sin(theta);
  rightX =centerX+ d2*cos(theta+phi);
  rightY = centerY+ d2*sin(theta+phi);
  leftX= centerX+ d2*((cos(theta-phi))); 
  leftY= centerY+ d2*((sin(theta-phi)));
}
