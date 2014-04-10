class Vehicle
{
  PImage img_cotxe;    // variable per l'arxiu de l'imatge
  float pos_x, pos_y;  // variables per la localització de l'imatge
  float velocitat_x;   // variable per la velocitat de l'imatge    
  
  // Constructors
  Vehicle(String filename, float x, float y)
  {
    img_cotxe = loadImage(filename);
    pos_x = x;
    pos_y = y;
    velocitat_x = 3;
  }
  
  // Mètodes
  void visualitzar()
  {
    img_cotxe.resize(width/15, height/15);
    image(img_cotxe, pos_x, pos_y);
  }
  
  void moure()
  {
    pos_x += velocitat_x;
    if(pos_x > width)
    {
      pos_x = -img_cotxe.width;
    }
  }
}
