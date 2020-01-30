size (700,500);
fill (255);
final int DIE_SIZE = 100;
final int DOT_SIZE = 20;
background(200);

//dice-One

{
  fill (255);
int topLeftX= width/7,topLeftY=height/5,dotX=topLeftX+(DIE_SIZE/2),dotY= topLeftY +(DIE_SIZE/2) ;              //topLeftX & topLeftY: starting X-coordinate and Y-coordinate of dice-one
fill (198,84,84);                                                                                              // setting color of dice
rect(topLeftX, topLeftY, DIE_SIZE, DIE_SIZE) ;                                                                 // drawing dice
fill (0);
ellipse (dotX,dotY,DOT_SIZE,DOT_SIZE);                                                                          // drawing dot of the dice
}

// dice-Two
  {
    fill (255);
int topLeftX=  3* (width/7),topLeftY=(height/5),dotX=topLeftX+(DIE_SIZE/4),dotY= topLeftY +(DIE_SIZE/4) ;        //topLeftX & topLeftY: starting X-coordinate and Y-coordinate of dice-two
fill (0,255,0);                                                                                                   // setting color of dice
rect(topLeftX, topLeftY, DIE_SIZE, DIE_SIZE) ;                                                                      // drawing dice
fill (0);
ellipse (dotX,dotY,DOT_SIZE,DOT_SIZE);                                                                               // drawing top-left dot of the dice
ellipse (dotX+(DIE_SIZE/2),dotY+(DIE_SIZE/2),DOT_SIZE,DOT_SIZE);                                                       // drawing bottom-right dot of the dice

}

// dice-Three
{
   fill (255);
int topLeftX= 5* (width/7),topLeftY=(height/5),dotX=topLeftX+(DIE_SIZE/4),dotY= topLeftY +(DIE_SIZE/4) ;          //topLeftX & topLeftY: starting X-coordinate and Y-coordinate of dice-three
fill (0,0,255);  
rect(topLeftX, topLeftY, DIE_SIZE, DIE_SIZE) ;
fill (0);
ellipse (dotX,dotY,DOT_SIZE,DOT_SIZE);                                                                               // drawing top-left dot of the dice
ellipse (dotX + (DIE_SIZE/4),dotY+(DIE_SIZE/4),DOT_SIZE,DOT_SIZE);                                                     // drawing middle dot of the dice
ellipse (dotX+(DIE_SIZE/2),dotY+(DIE_SIZE/2),DOT_SIZE,DOT_SIZE);                                                         // drawing bottom-right dot of the dice
   
}

// dice-four
{
   fill (255);
int topLeftX= (width/7),topLeftY=3*(height/5),dotX=topLeftX+(DIE_SIZE/4),dotY= topLeftY +(DIE_SIZE/4) ;           //topLeftX & topLeftY: starting X-coordinate and Y-coordinate of dice-four
fill (0,255,195);
rect(topLeftX, topLeftY, DIE_SIZE, DIE_SIZE) ;
fill (0);
ellipse (dotX,dotY,DOT_SIZE,DOT_SIZE);                                                                              // drawing top-left dot of the dice
ellipse (dotX + (DIE_SIZE/2),topLeftY+(DIE_SIZE/4),DOT_SIZE,DOT_SIZE);                                                // drawing top-right dot of the dice
ellipse (topLeftX + (DIE_SIZE/4),topLeftY+3*(DIE_SIZE/4),DOT_SIZE,DOT_SIZE);                                              // drawing bottom-left dot of the dice
ellipse (dotX+(DIE_SIZE/2),dotY+(DIE_SIZE/2),DOT_SIZE,DOT_SIZE);                                                              // drawing bottom-right dot of the dice
}                            

// dice-Five

{
   fill (255);
int topLeftX= 3*(width/7),topLeftY=3*(height/5),dotX=topLeftX+(DIE_SIZE/4),dotY= topLeftY +(DIE_SIZE/4) ;           //topLeftX & topLeftY: starting X-coordinate and Y-coordinate of dice-five
fill (255,193,8);
rect(topLeftX, topLeftY, DIE_SIZE, DIE_SIZE) ;                                                  
fill (0);
ellipse (dotX,dotY,DOT_SIZE,DOT_SIZE);                                                                                // drawing top-left dot of the dice
ellipse (dotX + (DIE_SIZE/2),topLeftY+(DIE_SIZE/4),DOT_SIZE,DOT_SIZE);                                                  // drawing top-right dot of the dice
ellipse (dotX ,dotY+2*(DIE_SIZE/4),DOT_SIZE,DOT_SIZE);                                                                      // drawing bottom-leftdot of the dice
ellipse (dotX+(DIE_SIZE/2),dotY+(DIE_SIZE/2),DOT_SIZE,DOT_SIZE);                                                                // drawing bottom-right dot of the dice
ellipse (dotX+(DIE_SIZE/4),dotY+(DIE_SIZE/4),DOT_SIZE,DOT_SIZE);                                                                    // drawing center dot of the dice
}

// dice-Six
{
   fill (255);
int topLeftX= 5*(width/7),topLeftY=3*(height/5),dotX=topLeftX+(DIE_SIZE/4),dotY= topLeftY +(DIE_SIZE/4) ;             //topLeftX & topLeftY: starting X-coordinate and Y-coordinate of dice-Six
fill (255,147,255);
rect(topLeftX, topLeftY, DIE_SIZE, DIE_SIZE) ;
fill (0);
ellipse (dotX,dotY,DOT_SIZE,DOT_SIZE);                                                                                // drawing top-left dot of the dice
ellipse (dotX + (DIE_SIZE/2),topLeftY+(DIE_SIZE/4),DOT_SIZE,DOT_SIZE);                                                  // drawing top-right dot of the dice
ellipse (dotX ,dotY+2*(DIE_SIZE/4),DOT_SIZE,DOT_SIZE);                                                                    // drawing bottom-left dot of the dice
ellipse (dotX+(DIE_SIZE/2),dotY+(DIE_SIZE/2),DOT_SIZE,DOT_SIZE);                                                            // drawing top-right dot of the dice
ellipse (dotX+2*(DIE_SIZE/4),topLeftY+(DIE_SIZE/2),DOT_SIZE,DOT_SIZE);                                                        // drawing right-center dot of the dice
ellipse (dotX,dotY+(DIE_SIZE/4),DOT_SIZE,DOT_SIZE);                                                                              // drawing left-center dot of the dice
}
