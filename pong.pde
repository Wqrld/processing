//xy
float x = 150;
float y = 150;
//speed
float xsnel = 4;
float ysnel = 4;
//extra
float stapje = 0.5;
float doelY = 150;
boolean over = false;
int score = 0;
int time = 0;

void setup() {
 size(300, 300); 
 rectMode(CENTER);
 textSize(14);
 print("started");
 background(0, 0, 0);
  
  
}

void draw() {
  textSize(14);
  background(0, 0, 0);
  text("Pong game made by Luc", 125, 10);
  text("time: " + time/50, 75, 290);
  time = time+1;
  text(score, 10, 16);
 // score = score + 1;
  rect(x, y, 10, 10);
  rect(5, doelY, 5, 60);
  x = x + stapje*xsnel;
  y = y + stapje*ysnel;
  if (x >= 300) {xsnel=-1*xsnel;}
  if (y >= 300 || y <= 0) { ysnel=-1*ysnel; }
  
  if (x <= 0) {
  background(0);
  textSize(30);
  text("game over", 70, 150);
  over = true;
  noLoop();
  }
  if (x <= 10 && y <= doelY+30 && y>= doelY-30) {
  xsnel=xsnel*-1.3; score = score + 100;
  }
  if (doelY >= 270) {doelY=270;}
  if (doelY <= 30) {doelY=30;}
//spagetticode
 
  
  
  
}

void reset(){
int time = 0;
int score = 0;

}

void keyPressed() {

if (keyCode == UP) {doelY=doelY-20;}
if (keyCode == DOWN) {doelY=doelY+20; }





}
