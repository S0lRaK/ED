// Global variables
Car car;
ArrayList<Car> cars;

// Executed just once
void setup()
{  
  size(1000, 800);
  smooth(8);  // anti-aliased egdes and improved resized quality images
  cars = new ArrayList<Car>();  // initialize car object
}

// Continuosly executed
void draw()
{  
  background(255);
  for(byte index = 0; index < cars.size(); index++)
  {
    car = cars.get(index);
    car.display();
    car.move();
  }
}

void mousePressed()
{
  cars.add(car = new Car());
}
