/*
Project Title: Jumpy Frog
Name: CB
Date: 12/01/2022
Description: The objective of this game is to jump across the screen on the lily pads.
The frog cannot jump backwards.

 */


PImage  frog, pad, water;
int xFrog = 75;
int yFrog = 750/2; //middle of yaxis
int nLP = 25  +1; //NUMBER OR LILYPADS
int LPcount =1;
int score=0;
float [] xLP= new float [nLP];
float[] yLP= new float [nLP];
float[] pScale= new float [nLP];
float[] dirX= new float [nLP];
float[] dirY= new float [nLP];
float distance;
float OP;
int yPlaySpace=1250-50;
int MPpower;
int power;
float angle;
boolean gamePlay = true;
int m ;
int reset =0;

void setup() {
  size(1250, 750);

  frog = loadImage("frog.png");
  frog.resize (80, 80);
  pad = loadImage("pad.png");
  pad.resize(120, 120);
  water = loadImage("water.jpg");
  water.resize(width, height);
  for (int i=0; i<nLP; i++) {
    xLP[i] = width*i/float(nLP);
    yLP[i] = random(yPlaySpace);
  }

  imageMode(CENTER);
}

void draw() {

  if (LPcount >=1) gamePlay=true;
  if (LPcount< 1&&OP>60) gamePlay=false;
  LPcount=0;
  if (gamePlay==true) {
    background(#7877FA); //need to change to water image
    image(water, width/2, height/2);
    line(xFrog, yFrog, mouseX, mouseY);
    fill(0);





    //wierd varible beeswax to calc angle
    float oppositem = mouseY-yFrog;
    float adjacent =  mouseX-xFrog;
    angle=atan(oppositem/adjacent);

    //Funtions on LP
    for (int a=0; a<nLP; a++) {
      OP = dist(xFrog, yFrog, 75, height/2);
      distance =  dist(xFrog, yFrog, xLP[a], yLP[a]);
      if (distance <60) {
        fill(255, 0, 0);
        LPcount++;
      }///indiactes INSIDE OF THE SCURCLE
      else  fill(155, 155, 255);
      if (a==0) {
        image(pad, 75, height/2);
        // circle(75, height/2, 120);
      } else
        image(pad, xLP[a], yLP[a]);
      //circle(xLP[a], yLP[a], 120);
    }

    //FROG
    push();
    translate(xFrog, yFrog);
    rotate(angle);
    image(frog, 0, 0);
    pop();
    line(xFrog, yFrog, mouseX, mouseY);
    fill(0);
    textSize(60);
    text("Jumps: "+score, 60, 87);

    //powerbar
    if (mousePressed) {

      m=millis();

      fill(#DDFF03);
      strokeWeight(2);
      stroke(0);
      //rotate(radians(180));
      rect(20, 0, 40, ((m/1000)*12)+15);
    }
    if (mousePressed ==false)
      m=reset;
  }
  if (xFrog >= width-50) {
    background(255);
    textSize(60);
    fill(#1F5DA1);
    text("WINNER", (width/2)-(60*3), height/2);
    textSize(40);
    fill(#1F5DA1);
    text("Press any key to start over", (width/2)-(40*5), height/2+150);

    for (int i=0; i<nLP; i++) {
      xLP[i] = width*i/float(nLP);
      yLP[i] = random(yPlaySpace);
    }
    xFrog=75;
    yFrog=750/2;
  }

  if (gamePlay==false) {

    background(0);
    fill(#30A119);
    textSize(90);
    text("GAMEOVER", 420, 400);


    fill(#21AB49);
    textSize(50);
    text("Press any key to start over", 371, 500);
    for (int i=0; i<nLP; i++) {
      xLP[i] = width*i/float(nLP);
      yLP[i] = random(yPlaySpace);
    }
  }
}

void mousePressed() {
  MPpower=frameCount;
}


void mouseReleased() {
  power = (frameCount-MPpower)/5;
  xFrog =xFrog +(15*floor(power*cos(angle)));
  yFrog =yFrog+(15*floor(power*sin(angle)));
  power =0;
  m=0;
  if (LPcount >=1) {
    gamePlay=true;
    score ++;
  }
  if (LPcount< 1&&OP>60) gamePlay=false;
}

void keyPressed() {
  score=0;
  xFrog = 75;
  yFrog = 750/2;
  nLP = 25  +1;
  LPcount =1;

  gamePlay=true;
}
