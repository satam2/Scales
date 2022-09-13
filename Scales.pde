void setup() {
  size(500, 500);  
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  scale(mouseX,mouseY);
}

int r = 0;
int g = 0;
int b = 0;

void scale(int x, int y) {
  // follow mouseX, mouseY to draw scales; click to change to random color
  if(mousePressed == true){
    r = (int)(Math.random()*256);
}

