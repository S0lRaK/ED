// Variables globals
Vehicle cotxe;
ArrayList<Vehicle> cotxes;
Objectiu objectiu;

void setup()  // s'executa un cop
{
  size(1000, 500);
  smooth(8);  // suavitza (anti-aliasing) les vores de les formes geomètriques i les imatges redimensionades
  cotxes = new ArrayList<Vehicle>();
  objectiu = new Objectiu(width/2, height/2, 50, 50);
}

void draw()  // s'executa repetidament
{
  background(255);
  // Recorrem l'array de cotxes
  for(byte i = 0; i < cotxes.size(); i++)
  {
    Vehicle cotxe = cotxes.get(i);
    cotxe.visualitzar();
    cotxe.moure();
  }
  objectiu.perSobre(mouseX, mouseY);
  objectiu.arrossegar(mouseX, mouseY);
  objectiu.visualitzar();
}

void mousePressed()
{
  objectiu.clicar(mouseX, mouseY);
  cotxes.add(cotxe = new Vehicle(){});
}

void mouseReleased()
{
  objectiu.noArrossegar();
}
