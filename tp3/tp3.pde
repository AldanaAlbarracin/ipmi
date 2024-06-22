//albarracin aldana
//tp3 comision1

PImage fondo;
int columnas =4;
int filas =6;
int tamaño=80;
int separacion=50;

void setup() {
  size (800, 400);
  background (0);
  fondo = loadImage("opArt.png");
  noLoop();
}
void draw () {
  image (fondo, 0, 0, 400, 400);
  println ("x :");
  println (mouseX);
  println ("y:");
  println (mouseY);
  //translate (400,400);
  
//rombo 1
//ubicacion
  float inicioX = 450;
  float inicioY = 0;

  for (int c = 0; c < columnas; c++) {
    for (int j = 0; j < filas; j++) {
      float x = inicioX + c * (tamaño + separacion);
      float y = inicioY + j * (tamaño + separacion/2);
      pushMatrix();
      translate(x + tamaño / 2, y + tamaño / 2);
      rotate(radians(45));
      rectMode(CENTER);
      fill(150);
      rect(0, 0, tamaño, tamaño);
      popMatrix();
    }
  }
}
