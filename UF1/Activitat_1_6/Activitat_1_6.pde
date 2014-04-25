// Modes
final byte modeNormal = 1;
final byte modeConstruccio = 2;

byte mode = 0;

// Variables globals
Vehicle cotxe;
ArrayList<Vehicle> cotxes;
Objectiu objectiu;
PImage imgNormal, imgConstruccio;

void setup()  // s'executa un cop
{
  size(1000, 500);
  smooth(8);  // suavitza (anti-aliasing) les vores de les formes geomètriques i les imatges redimensionades
  cotxes = new ArrayList<Vehicle>();
}

void draw()  // s'executa repetidament
{
  background(255);
  mostrarMenu();
  
  switch(mode)
  {
    case modeNormal:
      simular();
      break;
    case modeConstruccio:
      ;
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

// Funcions del menú (depenen del estat i son cridades desde DRAW)
void mostrarMenu()
{
  imgNormal = loadImage("F1.png");
  imgNormal.resize(width/15, height/15);
  image(imgNormal, (40*width)/100, height/10);
  imgConstruccio = loadImage("Construccio.jpeg");
  imgConstruccio.resize(width/15, height/15);
  image(imgConstruccio, (60*width)/100, height/10);
  
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

void simular()
{
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
      fill(#E83434);
      textSize(10);
      text("Pressiona qualsevol tecla per sortir", (40*width)/100, height - height/15);
}


