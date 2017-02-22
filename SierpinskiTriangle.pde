public void setup()
{
size(500, 500);
background(200, 80, 80);
}
public void draw()
{
  fill(150, 400, 200);
  sierpinski(0, 500, 500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len<=30)
  {
    triangle(x, y, x+len, y, x+len/2, y-len);
}
else
{
  sierpinski(x, y, len/2);
  sierpinski(x+len/2, y, len/2);
  sierpinski(x+len/4, y-len/2, len/2);
}}