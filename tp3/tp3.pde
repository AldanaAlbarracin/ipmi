//albarracin aldana
//tp3 comision1

PImage fondo;
int columnas = 4;
int filas = 6;
int tamaño = 80;
int separacion = 50;
color colorblanco;
color colorgris;
int retardo = 1000;
boolean superposicion = false;
float desplazamientoX = 0;
boolean actualizar = true;

void setup() {
  size(800, 400);
  background(0);
  fondo = loadImage("opArt.png");
  colorblanco = color(255);
  colorgris = color(200);
}

void draw() {
  if (actualizar) {
    background(0);
    image(fondo, 0, 0, 400, 400);
    for (int c = 0; c < columnas; c++) {
      for (int j = 0; j < filas; j++) {
        float x = 450 + c * (tamaño + separacion) + desplazamientoX;
        float y = j * (tamaño + separacion / 2);
        romboblanco(x, y, tamaño, colorblanco);
        if (j > 0 && superposicion) {
          rombogris(x, y, tamaño);
        }
      }
    }
    actualizar = false;
  }
}

void romboblanco(float x, float y, int tamaño, color c) {
  pushMatrix();
  translate(x + tamaño / 2, y + tamaño / 2);
  rotate(radians(45));
  rectMode(CENTER);
  fill(c);
  rect(0, 0, tamaño, tamaño);
  popMatrix();
}

void rombogris(float x, float y, int tamaño) {
  float tamañogris = calcularTamañoGris(x, tamaño);
  float desY = y - tamaño / 2;
  pushMatrix();
  translate(x + tamaño / 2, desY + tamaño / 2);
  rotate(radians(45));
  rectMode(CENTER);
  fill(colorgris);
  rect(0, 0, tamañogris, tamañogris);
  popMatrix();
}

float calcularTamañoGris(float x, int tamaño) {
  return map(x, 450, 450 + (columnas - 1) * (tamaño + separacion), tamaño * 0.7, tamaño * 0.9);
}

void actualizarcolores() {
  color temp = colorblanco;
  colorblanco = colorgris;
  colorgris = temp;
}

void mouseMoved() {
  if (millis() % (2 * retardo) < retardo) {
    actualizarcolores();
    actualizar = true;
  }
}

void keyPressed() {
  if (key == 't' || key == 'T') {
    superposicion = !superposicion;
    actualizar = true;
  }
  if (key == 'a' || key == 'A') {
    desplazamientoX += 10;
    actualizar = true;
  }
}
