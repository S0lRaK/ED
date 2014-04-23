// Estats (per identificar la situació en que está el programa)
final byte estatMenu = 0;    // menú principal
final byte estatNormal = 1;
final byte estatConstruccio = 2;

byte estat = estatMenu;

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
  
  switch(estat)
  {
    case estatMenu:
      mostrarMenu();
      break;
    case estatNormal:
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
      break;
    case estatConstruccio:
      gestionarEstatConstruccio();
      break;
    default:
      println("Opció del menú incorrecta.");
      exit();
      break;
  }      
}

// Funcions del ratolí 
void mousePressed()
{
  objectiu.clicar(mouseX, mouseY);
  cotxes.add(cotxe = new Vehicle(){});
}

void mouseReleased()
{
  objectiu.noArrossegar();
}

// Funcions del teclat
void keyPressed()
{
  switch(estat)
  {
    case estatMenu:
      keyPressedEstatMenu();
      break;
    case estatNormal:
      keyPressedEstatNormal();
      break;
    case estatConstruccio:
      keyPressedEstatConstruccio();
      break;
    default:
      println("Opció del teclat incorrecta.");
      exit();
      break;
  }
}

void keyPressedEstatMenu()
{
  switch(key)
  {
    case '1':
      estat = estatNormal;
      break;
    case '2':
      estat = estatConstruccio;
      break;
    case 's':
      exit();
      break;
    default:
      println("Opció incorrecta.");
      break;
  }
}

// Funcions del menú
void mostrarMenu()
{
  textSize(32);
  text("Simulació de vehicles", width/2, height/4, 3);
  textSize(14);
  text("[1] Mode Normal", width/4, height/2);
  text("[2] Mode Construcció", width - width/4, height/2);
  text("Pressiona 's' per sortir", width/2, height - height/4);
}
