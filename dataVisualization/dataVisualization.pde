/*
Project Title: Demographics at Check-In
Name: CB
Date: 11/16/2022
Description: During the COVID-19 Pandemic, US federal healthcare organizations included
the LGBTQ+ community in some of the criteria for accessing the early Covid vaccinations
and it was not really talked about. Medical offices collect demographic information of 
patients. Prior to COVID19, and even now, 
the research about social minorities and health risks has been very minimal. 
In the doctor's office answering demograpic information honestly, if it feels safe and open to,
can lead to further research in public health.

Color pallet: Scence of Scenery by Hyunjin Jo
Data drawn from PDF in file.
url: 
https://www.cdc.gov/mmwr/volumes/70/wr/pdfs/mm7005a1-H.pdf
*/

Table dataTable;
color sexmin = #D97E9F;
color sexmaj = #BDBF6F;
color circ = 180;
color textc = #403D3C;
PFont text1;
PFont text2;


void setup() {
  size(1500, 950);
  dataTable = loadTable("dataTable.csv", "header");
  text1 = loadFont("segoe.vlw");
  text2 = loadFont("segoeB.vlw");
  println(dataTable.getRowCount());
  println(round(dataTable.getFloat(0, 2))+"minAC");
  println(round(dataTable.getFloat(1, 2))+"hetAC");
  println(round(dataTable.getFloat(3, 2))+"minAE");
  println(round(dataTable.getFloat(4, 2))+"hetAE");
  println(round(dataTable.getFloat(6, 2))+"minC");
  println(round(dataTable.getFloat(7, 2))+"hetC");
  println(round(dataTable.getFloat(9, 2))+"minHD");
  println(round(dataTable.getFloat(10, 2))+"hetHD");
  println(round(dataTable.getFloat(12, 2))+"minCOPD");
  println(round(dataTable.getFloat(13, 2))+"hetCOPD");
  println(round(dataTable.getFloat(15, 2))+"minD");
  println(round(dataTable.getFloat(16, 2))+"hetD");
  println(round(dataTable.getFloat(18, 2))+"minH");
  println(round(dataTable.getFloat(19, 2))+"hetH");
  println(round(dataTable.getFloat(21, 2))+"minKD");
  println(round(dataTable.getFloat(22, 2))+"hetKD");
  println(round(dataTable.getFloat(24, 2))+"minO");
  println(round(dataTable.getFloat(25, 2))+"hetO");
  println(round(dataTable.getFloat(27, 2))+"minSC");
  println(round(dataTable.getFloat(28, 2))+"hetSC");
  println(round(dataTable.getFloat(30, 2))+"minSt");
  println(round(dataTable.getFloat(31, 2))+"hetSt");
}
void draw() {
  int sp = 30;
  int csz = 14;
  background(#D9D0D4);

  int opc =130;




  //For Asthma, Current
  fill(circ, opc);
  circle(125, height-700, 250);
  push();
  translate(170, height-650);
  rotate(radians(180));
  int x=-1;
  int y=0;
  int minAC = round(dataTable.getFloat(0, 2));
  int hetAC = round(dataTable.getFloat(1, 2));
  for (int ac=0; ac<100; ac++) {
    x++;
    if (x>4) {
      x=0;
      y++;
    }
    if (ac<= hetAC-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
      stroke(sexmaj);
      fill(sexmaj);
      circle(sp*x, sp*y, csz);
    }
    if (ac> hetAC-1 && ac<=minAC-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
    }
  }
  pop();
  //For Asthma, Ever
  push();
  fill(circ, opc);
  circle(365, height-563, 250);
  translate(420, height-485);
  rotate(radians(180));
  x=-1;
  y=0;
  int minAE = round(dataTable.getFloat(3, 2));
  int hetAE = round(dataTable.getFloat(4, 2));
  for (int ae=0; ae<100; ae++) {
    x++;
    if (x>4) {
      x=0;
      y++;
    }
    if (ae<= hetAE-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
      stroke(sexmaj);
      fill(sexmaj);
      circle(sp*x, sp*y, csz);
    }
    if (ae> hetAE-1 && ae<=minAE-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
    }
  }
  pop();




  //For Cancer
  fill(circ, opc);
  circle(610, height-650, 250);
  push();
  translate(662, height-690);
  rotate(radians(180));
  x=-1;
  y=0;
  int minC = round(dataTable.getFloat(6, 2));
  int hetC = round(dataTable.getFloat(7, 2));
  for (int c=0; c<100; c++) {
    x++;
    if (x>4) {
      x=0;
      y++;
    }
    if (c<= hetC-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
      stroke(sexmaj);
      fill(sexmaj);
      circle(sp*x, sp*y, csz);
    }
    if (c> hetC-1 && c<=minC-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
    }
  }
  pop();




  //For Heart Disease
  push();
  fill(circ, opc);
  circle(630, height-388, 250);
  translate(690, height-360);
  rotate(radians(180));
  x=-1;
  y=0;
  int minHD = round(dataTable.getFloat(9, 2));
  int hetHD = round(dataTable.getFloat(10, 2));
  for (int hd=0; hd<100; hd++) {
    x++;
    if (x>4) {
      x=0;
      y++;
    }
    if (hd<= hetHD-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
      stroke(sexmaj);
      fill(sexmaj);
      circle(sp*x, sp*y, csz);
    }
    if (hd> hetHD-1 && hd<=minHD-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
    }
  }
  pop();




  //For COPD
  fill(circ, opc);
  circle(900, height-600, 250);
  push();
  translate(950, height-540);
  rotate(radians(180));
  x=-1;
  y=0;
  int minCOPD = round(dataTable.getFloat(12, 2));
  int hetCOPD = round(dataTable.getFloat(13, 2));
  for (int copd=0; copd<100; copd++) {
    x++;
    if (x>4) {
      x=0;
      y++;
    }
    if (copd<= hetCOPD-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
      stroke(sexmaj);
      fill(sexmaj);
      circle(sp*x, sp*y, csz);
    }
    if (copd> hetCOPD-1 && copd<=minCOPD-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
    }
  }
  pop();


  //For Diabetes
  fill(circ, opc);
  circle(1198, height-700, 250);
  push();
  translate(1250, height-635);
  rotate(radians(180));
  x=-1;
  y=0;
  int minD = round(dataTable.getFloat(15, 2));
  int hetD = round(dataTable.getFloat(16, 2));
  for (int d=0; d<100; d++) {
    x++;
    if (x>4) {
      x=0;
      y++;
    }
    if (d<= hetD-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
      stroke(sexmaj);
      fill(sexmaj);
      circle(sp*x, sp*y, csz);
    }
    if (d> hetD-1 && d<=minD-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
    }
  }
  pop();

  //For Hypertension
  fill(circ, opc);
  circle(1030, height-290, 320);
  push();
  translate(1100, height-180);
  rotate(radians(180));
  x=-1;
  y=0;
  int minH = round(dataTable.getFloat(18, 2));
  int hetH = round(dataTable.getFloat(19, 2));
  for (int h=0; h<100; h++) {
    x++;
    if (x>4) {
      x=0;
      y++;
    }
    if (h<= hetH-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
      stroke(sexmaj);
      fill(sexmaj);
      circle(sp*x, sp*y, csz);
    }
    if (h> hetH-1 && h<=minH-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
    }
  }
  pop();


  //For Kidney Disease
  push();
  fill(circ, opc);
  circle(1350, height-415, 250);
  translate(1400, height-445);
  rotate(radians(180));
  x=-1;
  y=0;
  int minKD = round(dataTable.getFloat(21, 2));
  int hetKD = round(dataTable.getFloat(22, 2));
  for (int kd=0; kd<100; kd++) {
    x++;
    if (x>4) {
      x=0;
      y++;
    }
    if (kd<= hetKD-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
      stroke(sexmaj);
      fill(sexmaj);
      circle(sp*x, sp*y, csz);
    }
    if (kd> hetKD-1 && kd<=minKD-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
    }
  }
  pop();





  //For Obesity
  fill(circ, opc);
  circle(172, height-330, 300);
  push();
  translate(200, height-225);
  rotate(radians(180));
  x=-1;
  y=0;
  int minO = round(dataTable.getFloat(24, 2));
  int hetO = round(dataTable.getFloat(25, 2));
  for (int o=0; o<100; o++) {
    x++;
    if (x>4) {
      x=0;
      y++;
    }
    if (o<= hetO-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
      stroke(sexmaj);
      fill(sexmaj);
      circle(sp*x, sp*y, csz);
    }
    if (o> hetO-1 && o<=minO-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
    }
  }
  pop();



  //For Somking Current
  push();
  fill(circ, opc);
  circle(437, height-175, 260);
  translate(495, height-100);
  rotate(radians(180));
  x=-1;
  y=0;
  int minSC = round(dataTable.getFloat(27, 2));
  int hetSC = round(dataTable.getFloat(28, 2));
  for (int sc=0; sc<100; sc++) {
    x++;
    if (x>4) {
      x=0;
      y++;
    }
    if (sc<= hetSC-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
      stroke(sexmaj);
      fill(sexmaj);
      circle(sp*x, sp*y, csz);
    }
    if (sc> hetSC-1 && sc<=minSC-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
    }
  }
  pop();




  //For Stroke
  push();
  fill(circ, opc);
  circle(775, height-128, 250);
  translate(820, height-100);
  rotate(radians(180));
  x=-1;
  y=0;
  int minSt = round(dataTable.getFloat(30, 2));
  int hetSt = round(dataTable.getFloat(31, 2));
  for (int st=0; st<100; st++) {
    x++;
    if (x>4) {
      x=0;
      y++;
    }
    if (st<= hetSt-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
      stroke(sexmaj);
      fill(sexmaj);
      circle(sp*x, sp*y, csz);
    }
    if (st> hetSt-1 && st<=minSt-1) {
      stroke(sexmin);
      fill(sexmin);
      circle(sp*x-10, sp*y, csz);
    }
  }
  pop();

  fill(sexmin, opc);
  noStroke();
  rect(94, 48, 415, 70,5);
  textFont(text1);
  textSize(50);
  fill(textc);
  text("Sexual Minorities are", 100, 100);
  textFont(text2);
  textSize(60);
  fill(textc);
  stroke(0);
  strokeWeight(5);
  text("MORE LIKELY", 630, 160);
  textFont(text2);
  textSize(60);
  fill(sexmin);
  text("MORE LIKELY", 634, 164);
  fill(sexmaj, opc);
  noStroke();
  rect(1244, 881, 185, 25,5);
  textFont(text1);
  textSize(20);
  fill(textc);
  text("to suffer from illness than hetersexual people", 1000, 900);
  textFont(text1);
  textSize(15);
  fill(textc);
  text("asthma, current", 65, height-615);
  textFont(text2);
  textSize(60);
  fill(textc);
  stroke(0);
  strokeWeight(5);
  text(floor((dataTable.getFloat(2, 2))*100-100)+"%", 45, height-750);
  textFont(text1);
  textSize(15);
  fill(textc);
  text("asthma, ever", 325, height-592);
  textFont(text2);
  textSize(60);
  fill(textc);
  stroke(0);
  strokeWeight(5);
  text(floor((dataTable.getFloat(5, 2))*100-100)+"%", 305, height-617);
  textFont(text1);
  textSize(15);
  fill(textc);
  text("cancer", 590, height-660);
  textFont(text2);
  textSize(60);
  fill(textc);
  text(floor((dataTable.getFloat(8, 2))*100-100)+"%", 545, height-566);
  textFont(text1);
  textSize(15);
  fill(textc);
  text("heart disease", 600, height-325);
  textFont(text2);
  textSize(60);
  fill(textc);
  text(floor((dataTable.getFloat(11, 2))*100-100)+"%", 545, height-420);
  textFont(text1);
  textSize(15);
  fill(textc);
  text("COPD", 880, height-595);
  textFont(text2);
  textSize(60);
  fill(textc);
  text(floor((dataTable.getFloat(14, 2))*100-100)+"%", 840, height-633);
  textFont(text1);
  textSize(15);
  fill(textc);
  text("diabetes", 1175, height-600);
  textFont(text2);
  textSize(60);
  fill(textc);
  text(floor((dataTable.getFloat(17, 2))*100-100)+"%", 1160, height-730);
  textFont(text1);
  textSize(15);
  fill(textc);
  text("hypertension", 1000, height-380);
  textFont(text2);
  textSize(60);
  fill(textc);
  text(floor((dataTable.getFloat(20, 2))*100-100)+"%", 878, height-270);
  textFont(text1);
  textSize(15);
  fill(textc);
  text("kidney disease", 1305, height-460);
  textFont(text2);
  textSize(60);
  fill(textc);
  text(floor((dataTable.getFloat(23, 2))*100-100)+"%", 1300, height-330);
  textFont(text1);
  textSize(15);
  fill(textc);
  text("obesity", 140, height-429);
  textFont(text2);
  textSize(60);
  fill(textc);
  text(floor((dataTable.getFloat(26, 2))*100-100)+"%", 230, height-310);
  textFont(text1);
  textSize(15);
  fill(textc);
  text("smoking currently", 370, height-70);
  textFont(text2);
  textSize(60);
  fill(textc);
  text(floor((dataTable.getFloat(29, 2))*100-100)+"%", 340, height-225);
  textFont(text1);
  textSize(15);
  fill(textc);
  text("stroke", 755, height-60);
  textFont(text2);
  textSize(60);
  fill(textc);
  text(floor((dataTable.getFloat(32, 2))*100-100)+"%", 740, height-150);
  noStroke();
}
