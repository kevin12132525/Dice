  Die dice; 
  
  int sum = 0;
  int pipDiameter = 20;
  color pink = color(180, 30, 110); 
  
  void setup()
  {
      size(600, 600);  
      noLoop();
      noStroke();
  }
  void draw()
  {
      background(100); 
      for(int myY = 30; myY <= 430; myY+=100)
          {
             for(int myX = 50; myX < 550; myX+=100)
             {
               dice = new Die(myX, myY); 
               dice.roll(); 
               dice.show(); 
               sum = sum + dice.theNumber;
             }
          }      
      fill(255);
      textSize(45);
      textAlign(CENTER); 
      text("Sum: " + sum, 300, 570);
}
  void mousePressed()
  { 
      sum = 0;
      redraw(); 
  }
  class Die //models one single dice cube
  {
      int myX, myY, theNumber; 
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
      }
      void roll()
      {
          theNumber = (int)(Math.random()*6) + 1; 
      }
      void show()
      {  
          fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*50)+205); 
          rect(myX, myY, 100,100); 
          
          if(theNumber == 1){
            fill(pink);
            ellipse(myX + 50, myY + 50, pipDiameter, pipDiameter); 
          } 
          if(theNumber == 2){
            fill(pink);
            ellipse(myX + 65, myY + 50, pipDiameter, pipDiameter); 
            ellipse(myX + 35, myY + 50, pipDiameter, pipDiameter); 
          } 
          if(theNumber == 3){
            fill(pink);
            ellipse(myX + 50, myY + 50, pipDiameter, pipDiameter);
            ellipse(myX + 25, myY + 25, pipDiameter, pipDiameter); 
            ellipse(myX + 75, myY + 75, pipDiameter, pipDiameter); 
          } 
          if(theNumber == 4){
            fill(pink);
            ellipse(myX + 25, myY + 25, pipDiameter, pipDiameter); 
            ellipse(myX + 75, myY + 25, pipDiameter, pipDiameter); 
            ellipse(myX + 75, myY + 75, pipDiameter, pipDiameter); 
            ellipse(myX + 25, myY + 75, pipDiameter, pipDiameter);
          } 
           if(theNumber == 5){
            fill(pink);
            ellipse(myX + 25, myY + 25, pipDiameter, pipDiameter); 
            ellipse(myX + 75, myY + 25, pipDiameter, pipDiameter); 
            ellipse(myX + 75, myY + 75, pipDiameter, pipDiameter); 
            ellipse(myX + 25, myY + 75, pipDiameter, pipDiameter);
            ellipse(myX + 50, myY + 50, pipDiameter, pipDiameter); 
          } 
          if(theNumber == 6){
            fill(pink);
            ellipse(myX + 25, myY + 25, pipDiameter, pipDiameter); 
            ellipse(myX + 75, myY + 25, pipDiameter, pipDiameter); 
            ellipse(myX + 75, myY + 75, pipDiameter, pipDiameter); 
            ellipse(myX + 25, myY + 75, pipDiameter, pipDiameter);
            ellipse(myX + 25, myY + 50, pipDiameter, pipDiameter);
            ellipse(myX + 75, myY + 50, pipDiameter, pipDiameter);
          } 
      }
  }


