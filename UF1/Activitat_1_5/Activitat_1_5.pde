// Variables globals
Cotxe cotxe1;

void setup()  // s'executa un cop
{
  size(500,500);
  cotxe = new Cotxe();  // inicialització de l'objecte Cotxe  
}

void draw()  // s'executa repetidament
{
  background(255);
    
}

// Classes
class Cotxe
{
  PImage img_cotxe;
  float pos_x;
  float pos_y;
  float velocitat_x;  
  // Constructors
  Cotxe()
  {
    img_cotxe = loadImage("F1.png");
    
  }
}

class Objectiu
{
  
}
