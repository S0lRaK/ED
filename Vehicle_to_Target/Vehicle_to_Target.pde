// Global variables
Vehicle car;
ArrayList<Vehicle> cars;
Target target;

void setup()  // executed just once
{
  size(1000, 500);
  smooth(8);  // anti-aliased egdes and improved resized quality images
  cars = new ArrayList<Vehicle>();
  target = new Target(width/2, height/2, 50, 50);
}

void draw()  // continuosly executed
{
  background(255);
  // Go through the array of cars
  for(byte i = 0; i < cars.size(); i++)
  {
    Vehicle car = cars.get(i);
    car.display();
    car.move();
  }
  target.over(mouseX, mouseY);
  target.drag(mouseX, mouseY);
  target.display();
}

void mousePressed()
{
  target.click(mouseX, mouseY);
  // S'agrega un cotxe només quan es clica al canvas
  cars.add(car = new Vehicle(){});
}

void mouseReleased()
{
  target.noDrag();
}
