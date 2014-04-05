class Objectiu
{
  float pos_x, pos_y;    // coordenades
  float amplada, alçada; // tamany 
  
  // Constructors
  Objectiu(float x, float y, float am, float al)
  {
    pos_x = x;
    pos_y = y;
    amplada = am;
    alçada = al;
    ellipse(mouseX, mouseY, 50, 50);
  }
}
