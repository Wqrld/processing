void setup() {
  size(900,900);
  background(0);
}
//click to paint
void draw() {
  if (mousePressed) {
     ellipse(mouseX, mouseY, 100, 100);
  }

//scroll to clear
}
void mouseWheel(MouseEvent event) {
    background(0);
}
