// Variables globals
Vehicle cotxe;
Objectiu objectiu;

void setup()  // s'executa un cop
{
  size(1000, 500);
  cotxe = new Vehicle("F1.png", 50, 50);  // inicialització de l'objecte Cotxe
  objectiu = new Objectiu(width/2, height/2, 50, 50);
}

void draw()  // s'executa repetidament
{
  background(255);
  objectiu.visualitzar();
  cotxe.visualitzar();
  cotxe.moure();
}
