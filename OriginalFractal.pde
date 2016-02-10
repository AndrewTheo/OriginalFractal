
public void setup()
{
  size(500,500,P3D);
  background(0,0,0); 
}
public void draw()
{
   fractal(250,250,250);
}
public void mouseDragged()//optional
{
  changeColor();
}

public void fractal(int x, int y, int len) 
{
  rectMode(CENTER);
  rect(x, y, len, len, len/6);  
 if(len >= 10)
 {
   fractal(x-len/2,y-len/2,len/2);
   fractal(x+len/2,y-len/2,len/2);
   fractal(x-len/2,y+len/2,len/2);
   fractal(x+len/2,y+len/2,len/2);
 }
}
public void changeColor()
{
	fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
}
