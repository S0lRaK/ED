// Variables globals
Vehicle cotxe;
Objectiu objectiu;

void setup()  // s'executa un cop
{
  size(1000, 500);
  smooth(8);  // suavitza (anti-aliasing) les vores de les formes geomètriques i les imatges redimensionades
  cotxe = new Vehicle("F1.png", 50, 50);  // inicialització de l'objecte Cotxe
  objectiu = new Objectiu(width/2, height/2, 50, 50);
}

void draw()  // s'executa repetidament
{
  background(255);
  cotxe.visualitzar();
  cotxe.moure();
  objectiu.perSobre(mouseX, mouseY);
  objectiu.arrossegar(mouseX, mouseY);
  objectiu.visualitzar();
}

void mousePressed()
{
  objectiu.clicar(mouseX, mouseY);
}

void mouseReleased()
{
  objectiu.noArrossegar();
}
