import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//color
int mode;
final int INTRO=0;
final int GAME=1;
final  int PAUSE=2;
final int GAMEOVER=3;

//font variable
PFont game, retrolight, astral;

//color variables

color red =#ff0000;
color green =#00ff00;
color blue =#0000ff;
color yellow =#EFF707;
color purple =#CF00FF;
color pink =#FF0077;

//COLOR NAMES

String[] words={"RED", "GREEN", "BLUE", "YELLOW", "PURPLE", "PINK"};

color[] colors ={red, green, blue, yellow, purple, pink};

boxes[] box;
int n=50;
//score high score
int score;
int lives;
int HS;

//gif variables
PImage[]  gif;
int nof;
int f;

//counter
int counter;

//textsize
float tsize, Tsize, a;

//sfx
Minim minim;
AudioPlayer mega, collectcoin, plus, lost, incorrect;


//game
int x, y;

int randomWord;
int randomColor;
float randomMatch;


void setup() {
  size(800, 600, P3D);
  mode=INTRO;
  textAlign(CENTER, CENTER);
  //font
  PFont astral= createFont("Astral Delight.ttf", 100);
  textFont(astral);
  colorMode(HSB);

  //score highscore lives
  score=0;
  HS=0;
  lives=5;
  a=300;

  //gif
  nof=22;
  gif =new PImage[nof];

  int i=0;
  while (i<nof) {
    gif[i]= loadImage ("frame_"+i+"_delay-0.07s.gif");
    i++;
  }



  //sfx
  minim=new Minim(this);
  mega= minim.loadFile("mega.mp3");
  collectcoin= minim.loadFile("collectcoin.mp3");
  plus=minim.loadFile("plus.wav");
  lost=minim.loadFile("lost.wav");
  incorrect=minim.loadFile("incorrect.wav");


  //game
  randomWord=(int) random(0, 6);
  randomColor=(int) random(0, 6);
  randomMatch=(int) random(0, 2);


  x= (int)random(200, 500);
  y=-100;

  tsize=80;
  Tsize=5;

  //background
  box=new boxes[n];


  int z=0;
  while (z<n) {
    box[z]= new boxes();
    z++;
  }
}




void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode ==PAUSE) {
    pause();
  } else if (mode ==GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
