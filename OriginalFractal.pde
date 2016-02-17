public void setup()
{
	size(800,800);
	noFill();
	stroke(255);
}

public void draw()
{
	background(0);
	myFractal(400,400,480);
}

public void myFractal(int x, int y, int siz)
{
	triangle(x-siz/2, y+siz/2, x+siz/2, y+siz/2, x, y-siz/2);
	ellipse(x,y-50-siz/2,siz,siz);
	ellipse(x,y+50+siz/2,siz,siz);
	ellipse(x,y,siz+siz/2, siz+siz/2);
	if(siz>10)
	{
		myFractal(x-siz/2, y, siz/2);
		myFractal(x+siz/2, y, siz/2);
	}
}

