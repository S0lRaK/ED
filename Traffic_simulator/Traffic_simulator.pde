// Global variables
ArrayList<Car> cars;
Road road;

// executed just once
void setup()
{  
  size(1000, 800);
  smooth(8);  // anti-aliased egdes and improved resized quality images
  cars = new ArrayList<Car>();
}

// continuosly executed
void draw()
{  
  background(255);
}
