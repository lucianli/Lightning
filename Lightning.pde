int startX = 0;
int startY = 300;
int endX = 0;
int endY = 300;
int x = 0;
void setup()
{
   size(600,600);
   background(0);
   strokeWeight(3);
}
void draw()
{
  while (x < 990) {
  	fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
    ellipse(300,300,1000 - x,1000 - x);
    x = x + 20;
  }
  stroke((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
  strokeWeight(10);
  endX = startX + ((int)(Math.random()*40));
  endY = startY + (((int)(Math.random()*49)-24));
  line(startX,startY,endX,endY);
  startX = endX;
  startY = endY;
}
void mousePressed()
{
  startX = 0;
  startY = mouseY;
  endX = 0;
  endY = 300;
}
