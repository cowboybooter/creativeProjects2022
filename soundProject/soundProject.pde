/*
TITLE: Polarized Political Tweets
 By: CB
 Date: 10/18/2022
 Description: This projects analyzes a few tweets from politicans. It feels on par with how that sounds. 
 Below are the tweets in the form which can be read by the rest of the code. When a word with a negative connotation is read, a negative sound plays (and visa versa with good sounds). 
 Searching for these tweets, the first three were found by Googling Top [name] Tweets and searching through them for something that seemed to talk about the individual as a person rather than their views as 
 a political figure.
 The last two pairs below were the term "trans" searched on well-known politcal figures (with opposing ideas) twitter profiles.
 Next Line contains instructions.
 */


//Bank of Tweets-- to listen to one of the below tweets found from the real internet, delete the double forwardslash and press the play button. 
//To select another one to play: replace deleted forwardslashes, and delete the two infront of the new tweet.

//String sentence = "Sorry losers and haters, but my IQ is one of the highest-and you all know it! Please don't feel so stupid or insecure, it's not your fault -Donald Trump";
//String sentence = "Every year, I get excited to share my summer playlist because I learn about so many new artists from your replies-it's an example of how music really can bring us all together. Here's what I've been listening to this summer. What songs would you add? -Barak Obama ";
//String sentence = "America, I'm honored that you have chosen me to lead our great country. The work ahead of us will be hard but I promise you this: I will be a President for all Americans-whether you voted for me or not. I will keep the faith that you have placed in me. - Joe Biden";

//String sentence = "Last year @RepMarieNewman targeted me and attacked my Christian beliefs by planting the trans flag next to her office door. Imagine if MY STAFF attacked her trans flag next to her office door. They'd be rotting in jail! But they never have nor ever would and its hanging across the hall untouched. - MTG";
//String sentence= "Trans kids are awesome, incredible, and wonderful. Bigotry is not. Republicans need to stop obsessing over other people's gender identity because frankly it's very weird and they're doing a lot of harm to children who are just trying to be themselves. #letkidsplay -AOC";

//String sentence = "Standing in solidarity with our trans community on the international #TransDayofVisibility. Here in Oregon trans folks will and always be respected, protected, and loved. Thank you, Mikki, for standing with trans Oregonians and for standing with Tina #orpol @basicrights -Tina Kotek";
// I feel that it is important for me to note that I searched OR Governer Candidate Christine Drazan's twitter for tweets mentioning "trans", "gay", "bi", "lesbian", and "lgbt" and got zero hits.


String sentencelc = sentence.toLowerCase();
String [] words = splitTokens(sentencelc, " ,.!?-");
int current = 0;
String [] neg = {"nor", "insecure","bigotry","weird", "harm","attacked", "targeted", "rotting", "losers", "haters", "stupid","no", "not", "bad", "hate", "lousy", "weak", "terrible", "awful", "angry", "mal", "ugly", "wicked", "negative", "don't", "can't", "won't", "wouldn't", "could'n't", "never" ,"trump", "nor",};
String [] pos = {"awesome","solidarity","respected","protected","loved","","incredible", "wonderful","honored","faith","honor","together", "courage","artists","excited","learn", "best", "always", "heart", "give", "nice", "great", "awesome", "fantastic", "good", "ok", "happy", "well", "friendly", "positive", "lucky", "smile", };
//soundstuff
String [] negsounds = {"failure", "negativebeeps","wrongbuzzer", "wordno"};
String [] possounds = {"hellyeah","ohohyeah","shoutingyeah","yeah", "childyes"};
import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioPlayer playneg;
AudioPlayer [] negsound = new AudioPlayer [negsounds.length]; //[number] = # of negsounds in bank
AudioPlayer playpos;
AudioPlayer [] possound = new AudioPlayer [possounds.length]; //[#] = # of possounds in bank

int countpos= 0;
int countneg=0;


void setup() {
  size(1000, 750);
  println(words.length);
  minim = new Minim (this); //what does this line do?
  player = minim.loadFile ("backgrounddrumloop.mp3");
  for (int a=0; a<negsounds.length; a++) {
    negsound [a] = minim.loadFile (negsounds[a]+".mp3");// recorded "nuhhh uhh", "heck no"
  }
  for (int b=0; b<possounds.length; b++) {
    possound [b] = minim.loadFile (possounds[b]+".mp3"); // recorded "uhhh huhh"s
  }
  player.rewind();
  player.play();
}

void draw() {
  if (frameCount%30==0 && current < words.length-1) {
    current++;
    boolean hit = false;
    // check for, then play sound here

    //Check all positive words against current
    if (hit == false) {
      for (int p = 0; p<pos.length; p++) {
        if (words[current].equals(pos[p])) {
          int possoundchoice=floor(random(possounds.length));
          possound[possoundchoice].rewind();
          possound[possoundchoice].play();
          fill(0, 255, 0); // temporarily show text as GREEN
          hit = true;
          countpos ++;
        }
      }
    }

    //Check all negative words against current
    if (hit == false) {
      for (int n=0; n<neg.length; n++) {
        if (words[current].equals(neg[n])) {          
          int negsoundchoice=floor(random(negsounds.length));
          negsound[negsoundchoice].rewind();
          negsound[negsoundchoice].play();
          fill(255, 0, 0);// temporarily show text as red
          hit = true;
          countneg ++;
        }
      }
    }
    if (hit == false) {
      fill(255);            
    }
  }
  background(0);
  textAlign(CENTER);
  textSize(30);
  text(sentence, 0, 100, width, height);
  text("Positive Count:"+countpos, 150, 700);
  text("Negative Count:"+countneg, width-150,700);
  text("CURRENT WORD:   "+words[current], width/2, 500);
}
