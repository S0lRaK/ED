// Global variables
Car car;

// executed just once
void setup()
{  
  size(1000, 800);
  smooth(8);  // anti-aliased egdes and improved resized quality images
  car = new Car();
}

// continuosly executed
void draw()
{  
  background(255);
  car.display();
  car.move();
}
