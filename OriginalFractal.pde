public void setup()
{
	size(600,600);  
}

public void draw()
{
  background(255,201,0);
  mainfractal(300,300,300);
  circleloops(90,90,150);
  siertriangle(460,140,130);
  sierrectangle(20,550,130);
  boxunique(470,460,100);
}

public void mainfractal(int x, int y, int rate)
{
  noFill();
  
	 ellipse(x,y,rate,rate);
    
    if(rate > 10)
  {   
    //mainfractal(x,y,rate/2);
    mainfractal(x+rate/2,y,rate/2);
    mainfractal(x-rate/2,y,rate/2);
    mainfractal(x,y-rate/2,rate/2);
    mainfractal(x,y+rate/2,rate/2);
	}
}

public void circleloops(int x, int y, int lel)
{
   ellipse(x,y,lel,lel);
   if(lel > 10) {circleloops(x,y,lel/2);}
}

public void siertriangle(int x, int y, int kevin)
{
  if (kevin <= 20) 
    triangle(x, y, x+kevin/2, y-kevin, x+kevin, y);
  else
  {
  siertriangle(x,y,kevin/2);
  siertriangle(x+kevin/2, y , kevin/2 );
  siertriangle(x+kevin/4 , y-kevin/2 , kevin/2);
  }
}

public void sierrectangle(int x, int y, int change)
{
  if (change <= 20) 
    rect(x, y, change,change);
  else
  {
  sierrectangle(x,y,change/2);
  sierrectangle(x+change/2, y , change/2 );
  sierrectangle(x+change/4 , y-change/2 , change/2);
  }
}
public void boxunique(float x, float y, float siz)
{
   rect(x,y,siz,siz);
   if(siz > 5) 
   {
  boxunique(x,y+siz/2,siz/2);
  boxunique(x+siz/2,y,siz/2);
	}
}