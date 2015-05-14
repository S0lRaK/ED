class Car
{
  PImage imageCar;
  float posX, posY;    // localization
  float speed;
  
  // Constructors
  Car()
  {
    imageCar = loadImage("F1_RedBull_front.png");
    speed = random(1, 3);
  }
  
  // Methods
  void display()
  {
    imageCar.resize(width/15, height/15);
    image(imageCar, posX, posY);
  }
  
  void move()
  {
    
  }
}
