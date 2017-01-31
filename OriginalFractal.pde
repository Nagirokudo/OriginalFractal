public void setup()
{
	size(500, 500);
}
public void draw()
{
	background(0);
	strokeWeight(2);
	stroke((int)(Math.random()*255)+20, (int)(Math.random()*255)+50, (int)(Math.random()*255)+100);
	fractal(50,400,400);
}
public void fractal(int x, int y, int len)
{		noFill();
		ellipse(x+len/4, y, len/2, len/2);

		line(x, y, x+len/2, y);
		line(x+len/4, y-len/4, x+len/4, y+len/4);
		line(x+len/11.9, y-len/5.8, x+len/2.3, y+len/5.7);
		line(x+len/11.9, y+len/5.8, x+len/2.3, y-len/5.7);

		if(len < 10)
		{
			noFill();
			ellipse(x+len/4, y, len/2, len/2);

			line(x, y, x+len/2, y);
			line(x+len/4, y-len/4, x+len/4, y+len/4);
			line(x+len/11.9, y-len/5.8, x+len/2.3, y+len/5.7);
			line(x+len/11.9, y+len/5.8, x+len/2.3, y-len/5.7);
		}

		else 
		{
			//fractal(x, y, len/2);
			fractal(x+len/2, y, len/2);
			fractal(x+len/4, y-len/2, len/2);
		}



	
}