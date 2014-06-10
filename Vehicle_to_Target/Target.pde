class Target
{
  float posX, posY;           // coordinates
  float width, height;        // size
  boolean dragged;            
  boolean over;               // is mouse over target?
  float offsetX, offsetY;     // compensation when object is clicked
  
  // Constructors
  Target(float x, float y, float w, float h)
  {
    posX = x;
    posY = y;
    width = w;
    height = h;
    offsetX = 0;
    offsetY = 0;
  }
  
  // Methods
  void display()
  {
    ellipse(posX, posY, width, height);
    if (dragged) fill (#3e87ba);
    else if (over) fill (#bf6940);
    else fill (#3db648);
  }
  
  void click(int x, int y)
  {
    if (x > posX && x < posX + width && y > posY && y < posY + height)
    {
      dragged = true;
      // Relative location tracking
      offsetX = posX - x;
      offsetY = posY - y;
    }
  }
  
  void over(int x, int y)
  {
    if (x > posX && x < posX + width && y > posY && y < posY + height)
    {
      over = true;
    } else {
      over = false;
    }
  }
  
  void noDrag()
  {
    dragged = false;
  }
  
  void drag(int x, int y)
  {
    if (dragged)
    {
      posX = x + offsetX;
      posY = y + offsetY;
    }
  }
}
