PImage head; // A variable for the image file
float x,y;   // Variables for image location
float rot;   // A variable for image rotation

void setup() {
  size(200,200);
  
  // Load image, initialize variables
  head = loadImage("F1.png");
  x = 0.0;
  y = width/2.0;
  rot = 0.0;
}

void draw() {
  background(255);
  
  // Translate and rotate
  translate(x,y);
  rotate(rot);
  
  // Images can be animated just like regular shapes using variables, translate(), rotate(), and so on.
  image(head,0,0); 
  
  // Adjust variables for animation
  x += 1.0;
  rot += 0.02;
  if (x > width+head.width) {
    x = -head.width;
  }
}
