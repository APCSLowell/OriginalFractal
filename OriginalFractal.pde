public void setup()
{
	size(600,600);  
}

public void draw()
{
	well(300,300,1200);
}

public void well(int x, int y, int cat)
{
	if(cat <= 600)
		ellipse(x, y, cat, cat);
	else
	{
		well(x,y,cat/2);
  		//well(x+cat/2, y , cat/2 );
  		//well(x+cat/4 , y-cat/4 , cat/2);

	}
}