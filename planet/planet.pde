final int CENTER_X =350, CENTER_Y = 350, ORBIT_RADIUS = 300, SUN_SIZE =40, PLANET_SIZE = SUN_SIZE/2, MOON_SIZE = PLANET_SIZE/2, MOON_RADIUS = 80 ;
float planetAngle = 0,planet_X,planet_Y,moon_X,moon_Y,moonAngle=0;
final float PLANET_SPEED=0.01;
 
void setup(){
size (700,700);
  
}

void draw (){
  background(0);
  stroke (255);
  fill (0);
  drawOrbit();
  drawSun();
    drawOrbit2();
   movePlanet();
  drawPlanet();
  drawMoon();
  moveMoon();

  
  
}


void drawOrbit(){                                                                                          // this function draws orbit
  ellipse (CENTER_X,CENTER_Y,ORBIT_RADIUS,ORBIT_RADIUS);
  
}


void drawSun(){                                                                                         // this function draws sun
  fill (244,245,25);
   ellipse (CENTER_X,CENTER_Y,SUN_SIZE,SUN_SIZE);
  
}

void drawOrbit2(){                                                                                           // this function draws moon orbit
fill (0);
  stroke (255);
  ellipse (planet_X,planet_Y ,MOON_RADIUS,MOON_RADIUS);
  
}


void drawPlanet(){   // this function draws planet
 fill (255);
 ellipse(planet_X,planet_Y, PLANET_SIZE, PLANET_SIZE);

}

void movePlanet (){                                                                                       // this function moves planet
  planet_X = cos(planetAngle)*(ORBIT_RADIUS/2)+CENTER_X;
  planet_Y = sin(planetAngle)*(ORBIT_RADIUS/2)+CENTER_Y;
  planetAngle = planetAngle + PLANET_SPEED;

  
}




void drawMoon(){                                                                                                 // this function draws moon
fill (255);
 ellipse(moon_X,moon_Y, MOON_SIZE, MOON_SIZE);

}

void moveMoon (){                                                                                       // this function moves moon
  moon_X = cos(moonAngle)*(MOON_RADIUS/2)+planet_X;
  moon_Y = sin(moonAngle)*(MOON_RADIUS/2)+planet_Y;
 moonAngle = moonAngle + PLANET_SPEED;

  
}
