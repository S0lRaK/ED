// Variables globals
Vehicle cotxe;
Objectiu obj;

void setup()  // s'executa un cop
{
  size(1000, 500);
  cotxe = new Vehicle("F1.png", 0, 0);  // inicialització de l'objecte Cotxe
  obj = new Objectiu();  
}

void draw()  // s'executa repetidament
{
  background(255);
  cotxe.visualitzar();
  cotxe.moure();
}
