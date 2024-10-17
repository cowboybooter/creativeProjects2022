/*
   Calista Gerard
   11/03/22
   This project features a lot of little pouches made from code. 
   Sort of in a flower way, but if printed large enough a little home for succulents.
 */

import nervoussystem.obj.*;

boolean record;

PShape ring;
float zoom=0.5;
void setup() {
  size(1000, 750, P3D);
  ring = loadShape("torus.obj");
}

void draw() {
  background(0);
  lights();

  if (record) {
    beginRecord("nervoussystem.obj.OBJExport", "3Dv5.obj");
  }

  translate(width/2, height/2); //translates origins to the middle of the sketch
  noStroke();
  fill(255);
  sphere(45); //CENTER OF SKETCH

  /* //making it moveable to view (NAVIGATION) in TWEAKMODE
   rotateX(radians(2.7));
   rotateY(radians(0.0));
   rotateZ(radians(37.8));
   
   
   */
  scale(zoom, zoom, zoom);
  rotateX(mouseY/100.0);
  rotateY(mouseX/100.0);

  //actual drawing shit
  for (int c=0; c<2; c++) {
    //group of groups
    push();
    rotateX(radians(180.0*c));
    rotateY(radians(0.1*c));
    rotateZ(radians(0.0*c));
    translate(0.0, 144.9, 0.0);
    rotateX(radians(0.0));
    rotateY(radians(0.0));
    rotateZ(radians(0.0));
    scale(1.0, 1.0, 1.0);

    for (int b=0; b<4; b++) {
      //group of cup shapes
      push();
      rotateX(radians(0.0*b));
      rotateY(radians(90.0*b));
      rotateZ(radians(0.0*b));
      translate(0.0, 0.0, -200.0);
      rotateX(radians(-45.0));
      rotateY(radians(0.0));
      rotateZ(radians(0.0));
      scale(1.0, 2.5, 1.0);
      for (int a=0; a<20; a++) {
        //weird cup shape with opening
        push();
        rotateX(radians(0.0*a));
        rotateY(radians(9.0*a));
        rotateZ(radians(0.0*a));
        translate(30.0, 0.0, 0.0);
        rotateX(radians(0.0));
        rotateY(radians(0.0));
        rotateZ(radians(45.0));
        scale(0.4, 0.4, 1.2);
        noStroke();
        fill(255);
        shape(ring);
        pop();
      }

      pop();
    }
    pop();
  }
   for (int c=0; c<2; c++) {
    //group of groups
    push();
    
    rotateX(radians(0.0*c));
    rotateY(radians(0.0*c));
    rotateZ(radians(180.0*c));
    translate(0.0, 175.0, 0.0);
    rotateX(radians(0.0));
    rotateY(radians(0.0));
    rotateZ(radians(0.0));
    scale(1.0, 1.0, 1.0);
fill(150,150,0);
    sphere(75);
    for (int b=0; b<8; b++) {
      //group of cup shapes
      push();
      rotateX(radians(0.0*b));
      rotateY(radians(45.0*b));
      rotateZ(radians(0.0*b));
      translate(0.0, 0.0, -475.0);
      rotateX(radians(-35.0));
      rotateY(radians(0.0));
      rotateZ(radians(0.0));
      scale(1.0, 2.5, 1.0);
      for (int a=0; a<20; a++) {
        //weird cup shape with opening
        push();
        rotateX(radians(0.0*a));
        rotateY(radians(9.0*a));
        rotateZ(radians(0.0*a));
        translate(50.0, 0.0, 0.0);
        rotateX(radians(0.0));
        rotateY(radians(0.0));
        rotateZ(radians(35.1));
         
        scale(0.6, 0.7, 1.2);
        noStroke();
        fill(255);
        shape(ring);
      
        pop();
      }

      pop();
    }
    pop();
   }
  if (record) {
    endRecord();
    record = false;
  }
}

void keyPressed() {
  if (key=='s') save("threeDimentional.jpeg");
  //CTR+K

  if (key=='r') record=true;
}
