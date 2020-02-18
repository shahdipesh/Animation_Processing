float breadth, length, radius=40, Vdistance, Hdistance, distance, tempDistance,tempX,tempY;  //<>//
final int centerX= parseInt(random(radius, 400)), centerY=parseInt(random (radius, 400)), distance_hot = 60, distance_warm=200, 
          distance_cold = 300;
String state = "";                                    //it stores the current state of the player
boolean gameOver = false,circle=false;
int counter = 0;                                      // this stores  number of clicks
float random_number = random (0, 200);               // generating a random number so that the ball is within the circle each time mouse is clicked, but at a certain distance from the edge of circle


void setup () {
  size(700, 500);
  breadth = width;
  length = height;
  textSize (20);
  textAlign(CENTER, CENTER);
}

void draw () {
  background (255);
  displayText();
  drawCircle();
}

void drawBall() {
  fill (0, 0, 255);
  noStroke();
  ellipse (centerX, centerY, radius, radius);
  text ("Congratulations you have found the ball in "+counter+" guesses", breadth/2, height/2);
}

void checkBound() {
  if ((distance<=radius)) {
    state = "found";
  }
  if ((distance>radius/2)&&(distance<=distance_hot)) {
    state = "hot";
    counter++;
  } else if ((distance>distance_hot)&&(distance<=distance_warm)) {
    state = "warm";
    counter++;
  } else if ((distance>distance_warm)&&(distance<=distance_cold)) {
    state = "cold";
    counter++;
  } else if ((distance>distance_cold)) {
    state = "freezing";
    counter++;
  }
}

void displayText() {
  if (state.equals("found")) {
    drawBall();
    gameOver=true;
  }
  if (state.equals("hot")) {
    fill(255, 0, 0);
    stroke (255, 0, 0);
    text ("You’re very close”", breadth/4, height/4);
  }
  if (state.equals("warm")) {
    fill(252, 185, 48);
    stroke (252, 185, 48);
    text ("You’re getting warmer", breadth/3, height/3);
  }
  if (state.equals("cold")) {
    fill(0, 0, 255);
    stroke (0, 0, 255);
    text ("You’re cold", breadth/2, height/2);
  }
  if (state.equals("freezing")) {
    fill(0);
    stroke (0);
    text ("  You’re freezing", breadth/3, height/3);
  }
}

void drawCircle() {
  if (circle==true){
  noFill();
  ellipse(tempX, tempY, tempDistance*2+random_number, tempDistance*2+random_number);
  }
}

void mouseClicked() {
  if (gameOver==false) {
    Vdistance = sq(mouseX-(centerX));
    Hdistance = sq(mouseY-(centerY));
    distance = sqrt(Vdistance+Hdistance);
    tempDistance = distance;
    circle =true;
    tempX =mouseX;
    tempY=mouseY;
    checkBound();
  }
}
