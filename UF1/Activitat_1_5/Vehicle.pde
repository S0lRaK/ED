class Vehicle
{
  PImage img_cotxe;    // variable per l'arxiu de l'imatge
  float posX, posY;    // variables per la localització de l'imatge
  float velocitat;     // variable per la velocitat de l'imatge    
  
  // Constructors
  Vehicle(String filename, float x, float y)
  {
    img_cotxe = loadImage(filename);
    posX = x;
    posY = y;
    velocitat = 3;
  }
  
  // Mètodes
  void visualitzar()
  {
    img_cotxe.resize(width/15, height/15);
    image(img_cotxe, posX, posY);
  }
  
  void moure()
  {
    //pos_x += velocitat_x;
    if(posX > objectiu.posX)
    {
      posX = posX - velocitat;
    }else {
      posX = posX + velocitat;
    }
    if(posY > objectiu.posY)
    {
      posY = posY - velocitat;
    }else {
      posY = posY + velocitat;
    }
  }
}
