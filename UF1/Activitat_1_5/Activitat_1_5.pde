// Variables globals
Vehicle cotxe;
Objectiu objectiu;

void setup()  // s'executa un cop
{
  size(1000, 500);
  cotxe = new Vehicle("F1.png", 0, 0);  // inicialització de l'objecte Cotxe
  objectiu = new Objectiu(mouseX, mouseY, 50, 50);  
}

void draw()  // s'executa repetidament
{
  background(255);
  cotxe.visualitzar();
  cotxe.moure();
  objectiu.visualitzar();  
}
