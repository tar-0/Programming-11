import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer theme;
AudioPlayer opening;
AudioPlayer score;
AudioPlayer win;


int mode;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//entity variables
float leftx, lefty, leftd, rightd, rightx, righty; //paddles
float ballx, bally, balld; //ball

//keyboard variables
boolean wkey, skey, upkey, downkey;
boolean AI;

//ball variables
float vx, vy; //ball velocities

//scoring
int leftscore, rightscore, timer;


//PImages/fonts--------------------------------
PFont vintage;
PFont vintage2;
PFont blossom;
PFont ter;
PFont shotgun;


//COLOR PALLETTE

void setup(){
  size(1000,1000);
  mode = GAMEOVER;
  textAlign(CENTER,CENTER);
  
  vintage = createFont("vintage.ttf",75);
  vintage2 = createFont("vintage2.ttf",75);
  blossom = createFont("blossom.ttf", 75);
  ter = createFont("ter.ttf",75);
  shotgun = createFont("shotgun.ttf",75);
  
  //music
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  opening = minim.loadFile("opening.mp3");
  score = minim.loadFile("score.mp3");
  win = minim.loadFile("win.mp3");
  //-------------------------------------------------
  
  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 325;
  rightx = width;
  righty = height/2;
  rightd = 325;
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 125;
  
  //initialize keyboard variables
  wkey = skey = upkey = downkey = false;
  
  //initialize movement variables
  vx = random(1, 5);
  vy = random(1, 5);
  
  leftscore = 0;
  rightscore = 0;
  timer = 100;
  
}

void draw(){
  if (mode == INTRO){
    intro();
  } else if (mode == GAME){
    game();
  } else if (mode == PAUSE){
    pause();
  } else if (mode == GAMEOVER){
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}


void tactileRect (int x, int y, int w, int l){
 if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+l){
   
   stroke(#FFDB55);
  
} else {  

   stroke(#FF8D8B);
  
 }
 
}

void tactileRectRed (int a, int b, int c, int d){
 if (mouseX > a && mouseX < a+c && mouseY > b && mouseY < b+d){
   
  stroke(#E04944);
   
 } else {
  
  stroke(#FF8D8B);  
  
 }

}
