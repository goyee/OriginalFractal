public void setup()
{
  background(30,30,40);
  size(750,750);
}
public void draw()
{
  sierpinski(0,750,750);
}
public void concentric(int x1, int y1, int x2, int y2, int x3, int y3,int t)
{
  stroke(255);
  fill(30,30,40);
  triangle(x1, y1, x2, y2, x3, y3);
  if(t < 19){
    concentric(x1+10, y1-5, x2, y2+13, x3-10, y3-5, t+1);
  }
}
public void sierpinski(int x, int y, int len) 
{  
  stroke(255);
  fill(30,30,40);
  if(len <= 250) {
    triangle(x, y, x+len/2, y-len, x+len, y);
    concentric(x, y, x+len/2, y-len, x+len, y, 10);
  }
  else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
