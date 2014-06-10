// Modes
final byte modeNormal = 1;
final byte modeConstruc = 2;

byte mode = 0;

// Global variables
Vehicle car;
ArrayList<Vehicle> cars;
Target target;
PImage imgNormal, imgConstruc;
//hoverNormal = false;
//hoverConstruc = false;

void setup()  // executed just once
{
  size(1000, 500);
  smooth(8);  // anti-aliased egdes and improved resized quality images
  cars = new ArrayList<Vehicle>();
}

void draw()  // continuosly executed
{
  background(255);
  menu();
  //compararOpcio();
  
  switch(mode) {
    case modeNormal:
      simulate();
      break;
    case modeConstruc:
      ;
      break;
  }      
}

// Funcions del ratolí
void mousePressed()
{
  /*if
  objectiu.clicar(mouseX, mouseY);
  cotxes.add(cotxe = new Vehicle(){});
  */
}

void mouseReleased()
{
  target.noDrag();
}

// Menu functions (depends on 'mode')
void menu()
{
  imgNormal = loadImage("F1.png");
  imgNormal.resize(width/15, height/15);
  image(imgNormal, (40*width)/100, height/10);
  imgConstruc = loadImage("Construction.jpg");
  imgConstruc.resize(width/15, height/15);
  image(imgConstruc, (60*width)/100, height/10);
  
  /*
  fill(#4151D6);
  textSize(32);
  text("Simulació de vehicles", width/3, height/4, 3);
  fill(0);
  textSize(14);
  text("[1] Mode Normal", width/5, height/2);
  text("[2] Mode Construcció", width - width/3, height/2);
  fill(#E83434);
  text("Pressiona 's' per sortir", width/2, height - height/4);
  */
}

// Verify if mouse is over an option (mode)
void compararOpcio()
{
  
}

void simulate()
{
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
  fill(#E83434);
  textSize(10);
  text("Pressiona qualsevol tecla per sortir", (40*width)/100, height - height/15);
}
