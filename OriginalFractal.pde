public void setup()
{
  size(500,500);
  background(0);
}

public void draw()
{
  myFractal((int)(Math.random()*500), (int)(Math.random()*500), 200);
  frameRate(5);
}

public void myFractal(int x, int y, float length)
{
  if (length < 10) {
    ellipse(x,y,length,length);
  }
  else {
    fill(100, 200, 100);
    ellipse(x-length/8, y, length/4, length/4);
    ellipse(x-length*(float)Math.sqrt(2)/8, y-length*(float)Math.sqrt(2)/8, length/2, length/2);
    ellipse(x, y-length/8, length/4, length/4);
    ellipse(x+length*(float)Math.sqrt(2)/8, y-length*(float)Math.sqrt(2)/8, length/2, length/2);
    ellipse(x+length/8, y, length/4, length/4);
    ellipse(x+length*(float)Math.sqrt(2)/8, y+length*(float)Math.sqrt(2)/8, length/2, length/2);
    ellipse(x, y+length/8, length/4, length/4);
    ellipse(x-length*(float)Math.sqrt(2)/8, y+length*(float)Math.sqrt(2)/8, length/2, length/2);
    fill(200, 100, 100);
    myFractal(x, y, length/1.75);
  }
}
