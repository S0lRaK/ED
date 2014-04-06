class Objectiu
{
  float pos_x, pos_y;    // coordenades
  float amplada, altura; // tamany 
  
  // Constructors
  Objectiu(float x, float y, float am, float al)
  {
    pos_x = x;
    pos_y = y;
    amplada = am;
    altura = al;
  }
  
  // Mètodes
  void visualitzar()
  {
    ellipse(pos_x, pos_y, amplada, altura);
  }
}
