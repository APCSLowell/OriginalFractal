public void setup()
{
  size(600,600);  
}

public void draw()
{
  background(255,201,0);
  fractal(300,300,300);
  hmm(90,90,150);
  bob(460,140,130);
  cat(20,550,130);
  gg(470,460,100);
}

public void fractal(int x, int y, int rate)
{
  noFill();
  
   ellipse(x,y,rate,rate);
    
    if(rate > 10)
  {   
    //fractal(x,y,rate/2);
    fractal(x+rate/2,y,rate/2);
    fractal(x-rate/2,y,rate/2);
    fractal(x,y-rate/2,rate/2);
    fractal(x,y+rate/2,rate/2);
  }
}

public void hmm(int x, int y, int rate)
{
   ellipse(x,y,rate,rate);
   if(rate > 10) {hmm(x,y,rate/2);}
}

public void bob(int x, int y, int rate)
{
  if (rate <= 20) 
    triangle(x, y, x+rate/2, y-rate, x+rate, y);
  else
  {
  bob(x,y,rate/2);
  bob(x+rate/2, y , rate/2 );
  bob(x+rate/4 , y-rate/2 , rate/2);
  }
}

public void cat(int x, int y, int rate)
{
  if (rate <= 20) 
    rect(x, y, rate,rate);
  else
  {
  cat(x,y,rate/2);
  cat(x+rate/2, y , rate/2 );
  cat(x+rate/4 , y-rate/2 , rate/2);
  }
}
public void gg(float x, float y, float rate)
{
   rect(x,y,rate,rate);
   if(rate > 5) 
   {
  gg(x,y+rate/2,rate/2);
   gg(x+rate/2,y,rate/2);
   
   
   
 }
}