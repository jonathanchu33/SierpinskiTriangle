public void setup()
{
	size(400,400);
}
public void draw()
{
	background(255);
	sierpinski(100,300,200);
}
public void mouseDragged()
{
	//sierpinski(100,300,mouseY);
}
public void sierpinski(int x, int y, int len) 
{
	if (len<=5)
		triangle(x,y,x+len,y,x+len/2,y-len);
	else 
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}