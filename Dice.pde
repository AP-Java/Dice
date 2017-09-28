Die die1;
int totalDice;
void setup()
{
  noLoop();
  noStroke();
  size(290, 330);
}
void draw()
{
  background(0);
  totalDice = 0;
  for (int y = 10; y <= 250; y +=70) {
    for (int x = 10; x <= 250; x +=70) {
      die1 = new Die(x, y);
      die1.roll();
      die1.show();
      System.out.println(totalDice);
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int myX, myY, myNum;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
  }

  void roll()
  {
    myNum = ((int) (Math.random() *6));
    totalDice = totalDice + myNum;
  }
  void show()
  {
    rect(myX, myY, 60, 60, 7);
    rect(10,290,270,30,7);
    fill(0);
    textSize(18);
    text("The sum of these dice is: " + totalDice, 20, 310);
    if (myNum == 0)
    {  
      fill(0);
      ellipse(myX + 30, myY + 30, 10, 10);
      fill(255);
    }
    if (myNum == 1)
    {  
      fill(0);
      ellipse(myX + 45, myY + 45, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      fill(255);
    }
    if (myNum == 2)
    {  
      fill(0);
      ellipse(myX + 30, myY + 30, 10, 10);
      ellipse(myX + 45, myY + 45, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      fill(255);
    }
    if (myNum == 3)
    {  
      fill(0);
      ellipse(myX + 45, myY + 45, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 45, 10, 10);
      ellipse(myX + 45, myY + 15, 10, 10);
      fill(255);
    }
    if (myNum == 4)
    {  
      fill(0);
      ellipse(myX + 45, myY + 45, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 45, 10, 10);
      ellipse(myX + 45, myY + 15, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
      fill(255);
    }
    if (myNum == 5)
    {  
      fill(0);
      ellipse(myX + 45, myY + 45, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 45, 10, 10);
      ellipse(myX + 45, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 30, 10, 10);
      ellipse(myX + 45, myY + 30, 10, 10);
      fill(255);
    }
  }
}

