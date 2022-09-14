void setup() {
  size(500, 500);  
  background(#EDE7D5);
  //noLoop();
}

boolean shift = true;
int r = (int)(Math.random()*256);
int g = (int)(Math.random()*256);
int b = (int)(Math.random()*256);

void draw() {
  for(int y = 0; y < 550; y += 60){
    for(int x = 0; x < 550; x += 70){
      if(shift == true)
        scale(x+10,y);
      else
        scale(x-10,y);
    } // inner loop
    if(shift == true)
      shift = false;
    else
      shift = true;
  } // outer loop
}

void scale(int x, int y) {
  if(mousePressed == true){
    r = (int)(Math.random()*256);
    g = (int)(Math.random()*256);
    b = (int)(Math.random()*256);
  }
  fill(r,g,b);
  noStroke();
  // bowls
  arc(x-20,y+5,16,10,radians(0),radians(180));
  arc(x+20,y+5,16,10,radians(0),radians(180));
  
  strokeWeight(2);
  stroke(r,g,b);
  // middle pole
  line(x,y+25,x,y-25);
  // top and bot bases
  line(x-30,y-20,x+30,y-20);
  line(x-15,y+25,x+15,y+25);
  // strings holding bowls
  strokeWeight(1);
  line(x-20,y-20,x-13,y+5);
  line(x+20,y-20,x+28,y+5);
  line(x+20,y-20,x+12,y+5);
  line(x-20,y-20,x-28,y+5);
  //triangles
  triangle(x+3,y-25,x-3,y-25,x,y-30); // top
  triangle(x-10,y+25,x+10,y+25,x,y+20); // base
  triangle(x-30,y-20,x-28,y-20,x-29,y-23); // l end
  triangle(x+30,y-20,x+28,y-20,x+29,y-23); // r end
}
