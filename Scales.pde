void setup() {
  size(500, 500);  
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  scale(250,250);
}
void scale(int x, int y) {
  fill(0,0,255);
  noStroke();
  ellipse(x,y,100,100);
}

