class Vehicle
{
  PImage imgCar;      // variable of the image's file
  float posX, posY;   // variables for the loacalization of the image
  float speed;        // variable of the image's speed    
  
  // Constructors
  Vehicle()
  {
    imgCar = loadImage("F1.png");
    posX = mouseX;
    posY = mouseY;
    speed = random(3);
  }
  
  // Methods
  void display()
  {
    imgCar.resize(width/15, height/15);
    image(imgCar, posX, posY);
  }
  
  void move()
  {
    if(posX > target.posX)
    {
      posX = posX - speed;
    }else {
      posX = posX + speed;
    }
    if(posY > target.posY)
    {
      posY = posY - speed;
    }else {
      posY = posY + speed;
    }
  }
}
