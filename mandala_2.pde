float angle;
color r = #ff006e;
color p = #8338ec;
color b = #3a86ff;
color o = #fb5607;
color y = #ffbe0b;
float [] XYCoordinates = new float[2];
float x1, y1, x2, y2;
float theta;

void setup() {
  size(900, 900);
  strokeWeight(.5);
  fill(0);
  rect(0, 0, width, height);
  noFill();
  
  translate(width/2, height/2);  
  stroke(r);
  rectMode(CENTER);
  rect(0, 0, 210, 210);
  rect(0, 0, 400, 400);
  rect(0, 0, 500, 500);


  for (float i = .5; i <= 3.5; i+=.5) {
    rotate(i * PI/8);
    rect(0, 0, 210, 210);
  }

  stroke(o);
  rotate(PI/2);
  rect(0, 0, 400, 400);
  rect(0, 0, 500, 500);

  stroke(o);
  for (float theta = 0; theta < 6.24; theta += .04) {
    r= 400;
    x1 = getXYFromPolar(r, theta)[0];
    y1 = getXYFromPolar(r, theta)[1];

    r= 430;
    x2 = getXYFromPolar(r, theta)[0];
    y2 = getXYFromPolar(r, theta)[1];

    line(x1, y1, x2, y2);
    
    r = 435;
    x1 = getXYFromPolar(r, theta)[0];
    y1 = getXYFromPolar(r, theta)[1];
    fill(o);
    circle(x1,y1,10);
    noFill();
  }

}


void draw() {
  stroke(b);
  if (angle < 355) {
    angle = angle + 5;
    makeMandala(angle);
  }
  //save("mandala.tif");
}

void makeMandala(float angle) {
  pushMatrix();
  translate(width/2, height/2);
  rotate(angle);
  stroke(b);
  circle(100, 100, 20);
  circle(100, 100, 100);
  stroke(p);
  circle(200, 200, 200);
  stroke(y);
  rect(0, 0, 40, 300);
  popMatrix();
}

float[] getXYFromPolar(float r, float theta) {
  XYCoordinates[0] = r * cos(theta);
  XYCoordinates[1] = r * sin(theta);
  return XYCoordinates;
}
