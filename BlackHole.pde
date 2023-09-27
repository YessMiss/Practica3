PShape BlackHole;
PImage texture;
float angle;

void setup() {
  size (600, 600, P3D);
  texture = loadImage("1(1).PNG");
  BlackHole = loadShape("Black Hole.mtl");
  BlackHole.setTexture(texture); //attach texture to the 3D shape
}


void draw () {
  background (220);
  //lights();

  pushMatrix();
  translate (width/2, height/2+100);
  rotate(angle);
  rotateY(angle/2);
  scale (1.5);
  shape (BlackHole);
  popMatrix();

  angle+=.01; //increment angle
}
