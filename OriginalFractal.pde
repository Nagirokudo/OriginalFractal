public void setup()
{
	size(500, 500);
}
public void draw()
{
	background(0);
	strokeWeight(10);
	stroke(250, 250, 250);
	fractal(175,250,200);
}
public void fractal(int x, int y, int len)
{
		
		line(x, y, x+len/2, y);
		line(x+len/4, y-len/4, x+len/4, y+len/4);
		line(x+len/8, y-len/7, x+len/3, y+len/9);
		line(x, y, x, y);

	
}