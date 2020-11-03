int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

void setup()
{
  size(300,300);
  
  strokeWeight(0);
  background(180, 185, 190);
  
  fill(95, 95, 95);
  
  rect(0, 230, 40, 300);
  rect(50, 200, 50, 300);
  rect(150, 180, 30, 300);
  rect(200, 250, 60, 300);
  
  strokeWeight(3);
}

void draw()
{
  //stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)); //random lightning color
  stroke(239, 255, 82); // yellow lightning
  
  while(endY < 300)
  {
    endY = startY + (int)(Math.random()*9);
    endX = startX + (int)(Math.random()*(9+9)-9);
    
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
}
