void setup()
{
  size(500,500);
  noLoop();
}

int total;

void draw()
{
  background(0);
  for(int y = 15; y < 500; y += 70)
  {
    for(int x = 15; x < 500; x += 70)
    {
       Die dice = new Die(x, y);
       dice.show();
    }
  }
  fill(255);
  textSize(100);
  text(total, 155, 285);
}

void mousePressed()
{
  redraw();
  total = 0;
}

class Die
{
  int myRoll, myX, myY;
  
  Die(int x, int y)
  {
    myX = x;
    myY = y;
    roll();
  }
  
  void roll()
  {
    myRoll = (int)(Math.random()*6) + 1;
    total = total + myRoll;
  }
  
  void show()
  {
    if(myRoll == 1)
    {
      fill(#FF829B);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+25, myY+25, 7, 7);
    } else if(myRoll == 2)
    {
      fill(#FABE8C);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+16, myY+16, 7, 7);
      ellipse(myX+34, myY+34, 7, 7);
    } else if(myRoll == 3)
    {
      fill(#FAFA8C);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+13, myY+13, 7, 7);
      ellipse(myX+25, myY+25, 7, 7);
      ellipse(myX+37, myY+37, 7, 7);
    } else if(myRoll == 4)
    {
      fill(#A0C387);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+16, myY+16, 7, 7);
      ellipse(myX+16, myY+34, 7, 7);
      ellipse(myX+34, myY+16, 7, 7);
      ellipse(myX+34, myY+34, 7, 7);
    } else if(myRoll == 5)
    {
      fill(#87A0C3);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+15, myY+15, 7, 7);
      ellipse(myX+15, myY+35, 7, 7);
      ellipse(myX+35, myY+15, 7, 7);
      ellipse(myX+35, myY+35, 7, 7);
      ellipse(myX+25, myY+25, 7, 7);
    } else if(myRoll == 6)
    {
      fill(#B996C3);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+16, myY+13, 7, 7);
      ellipse(myX+16, myY+25, 7, 7);
      ellipse(myX+16, myY+37, 7, 7);
      ellipse(myX+34, myY+13, 7, 7);
      ellipse(myX+34, myY+25, 7, 7);
      ellipse(myX+34, myY+37, 7, 7);
    }
  }
  
}//end of Die class


