public void setup(){
  size(1000,1000);
  background(0,0,0);
}

public void draw(){
  sierpinski(10, 1000, 1000);
}

public void sierpinski(int x, int y, int len){
  noFill();
  stroke(194, 88, 17);
  if(len < 20){
    triangle(x, y, x+len, y, x-len, y-len);
  }
  else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
