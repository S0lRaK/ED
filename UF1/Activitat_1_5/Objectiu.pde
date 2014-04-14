class Objectiu
{
  float posX, posY;            // coordenades
  float amplada, altura;       // tamany
  boolean arrossegat;
  boolean per_sobre;           // ratolí per sobre l'objecte
  float compensaX, compensaY;  // compensació al clicar l'objecte amb el ratolí
  
  // Constructors
  Objectiu(float x, float y, float am, float al)
  {
    posX = x;
    posY = y;
    amplada = am;
    altura = al;
    compensaX = 0;
    compensaY = 0;
  }
  
  // Mètodes
  void visualitzar()
  {
    ellipse(posX, posY, amplada, altura);
    if (arrossegat) fill (#3e87ba);
    else if (per_sobre) fill (#bf6940);
    else fill (#3db648);
  }
  
  void clicar(int x, int y)
  {
    if (x > posX && x < posX + amplada && y > posY && y < posY + altura)
    {
      arrossegat = true;
      // Seguiment de la ubicació relativa
      compensaX = posX - x;
      compensaY = posY - y;
    }
  }
  
  void perSobre(int x, int y)
  {
    if (x > posX && x < posX + amplada && y > posY && y < posY + altura)
    {
      per_sobre = true;
    } else {
      per_sobre = false;
    }
  }
  
  void noArrossegar()
  {
    arrossegat = false;
  }
  
  void arrossegar(int x, int y)
  {
    if (arrossegat)
    {
      posX = x + compensaX;
      posY = y + compensaY;
    }
  }
}
