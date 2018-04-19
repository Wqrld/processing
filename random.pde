float ballX = 20;
float ballY = 50;
float dX = random(1, 2);
float dY = random(1, 5);



void setup(){
size(400, 400); //groote


}
void draw() {
  stroke(5, 0, 255);
  background(255, 255, 255); //bg
   fill(0, 255, 5);
  ellipse(ballX, ballY, 20, 50); //circle
  rect(30, 76, 10, 5); //vierkant
   fill(25, 255, 255);
  ellipse(5, 200, 20, 50); //circle
   fill(0, 5, 255);
  rect(150, 300, 100, 100);
  fill(255, 5, 5);
  stroke(5, 0, 255);
  textSize(32);
  text("hi", 100, 50);
  //ellipse(mouseX, mouseY, 20, 20); //circle volgt
   if (mousePressed) {
     rect(mouseX, mouseY, 20, 20); //vierkant volgt
  } else {
    ellipse(mouseX, mouseY, 20, 20); //circle volgt
  }

  if (ballX > width) {
    dX = -dX; // 2 word -2 en andersom
    
  }
 
  if (ballX < 0) {
    dX = -dX; // 2 word -2 en andersom
  }
 
   if (ballY > height) {
    dY = -dY; // if dY == 2, it becomes -2; if dY is -2, it becomes 2
  }
 
  if (ballY < 0) {
    dY = -dY; // if dY == 2, it becomes -2; if dY is -2, it becomes 2
  }
 
 
 
  ballX = ballX + dX;
  ballY = ballY + dY;
}
