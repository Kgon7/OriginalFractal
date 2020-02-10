public void setup()
{
	size(500,500);
	rectMode(CENTER);
}
public void draw()
{
	background(0);
	myFractal(250,250,200);
}
public void myFractal(int x, int y, int siz)
{
	fill(255,0,255);
	stroke(255,204,0);
	strokeWeight(2);
	rect(x,y,siz,siz);
	if(siz > 20)
	{
		myFractal(x+3*siz/4,y+3*siz/4,siz/2);
		myFractal(x+3*siz/4,y-3*siz/4,siz/2);
		myFractal(x-3*siz/4,y+3*siz/4,siz/2);
		myFractal(x-3*siz/4,y-3*siz/4,siz/2);

	}
}