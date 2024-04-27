// albarracin aldana
// tp1 comision 1

PImage fondo;
void setup () {
  size(800, 400);
  fondo = loadImage ("imagen perro tp1 comision1 recortada.png");
}

void draw () {

  println ("x :");
  println (mouseX);
  println ("y:");
  println (mouseY);
  background (89, 53, 29);
  image (fondo, 0, 0, 400, 400);

  fill (218, 177, 101);
  quad (400, 0, 660, 0, 600, 140, 400, 140); //mueble 1
  fill (14, 89, 105); // color colchoneta
  quad (644, 232, 800, 272, 800, 354, 625, 322); // colchoneta
  fill (98, 49, 0); //color mueble marron
  quad (660, 0, 800, 0, 800, 272, 668, 239); //mueble 2
  fill (255);
  noStroke (); //borrador del borde del cuerpo
  quad (447, 133, 495, 130, 525, 307, 400, 281); // cuerpo 2
  quad (447, 133, 495, 130, 525, 307, 400, 281); //sombra
  noStroke (); //borrador del borde del cuerpo
  quad (400, 115, 447, 133, 455, 242, 400, 281);//cuerpo 1
  fill (227, 227); //color sombra
  quad (400, 115, 447, 133, 455, 242, 400, 281);//cuerpo sombra 1
  fill (122, 122, 122);
  noStroke ();
  quad (400, 281, 800, 354, 800, 800, 400, 800); //sillon
  fill (255, 0, 0); // color de collar
  quad (470, 179, 495, 130, 529, 308, 501, 299); //collar
  fill (89, 53, 29); // color oreja cuadrilatero
  quad (507, 13, 530, 0, 556, 31, 511, 89); //oreja izquierda cuadrilatero
  fill (173, 121, 107); //color oreja cuadrilatero
  quad (626, 43, 648, 9, 677, 66, 659, 83); // oreja derecha cuadrilatero
  fill (255); // color de rostro
  stroke (197, 197, 197);
  ellipse (585, 166, 190, 283); //rostro
  fill (246, 237, 242); //color oreja
  triangle (648, 11, 719, 56, 674, 146); //oreja derecha triangulo
  triangle (451, 42, 530, 0, 511, 127); // oreja izquierda triangulo
  fill (255); // color hocico
  stroke (197, 197, 197);
  ellipse (585, 293, 125, 147); //hocico
  fill (37, 35, 36); // color nariz
  triangle (547, 252, 623, 258, 584, 347); //nariz
  stroke (173, 121, 107);
  line (566, 362, 584, 347); //linea izquierda nariz
  stroke (173, 121, 107);
  line (584, 347, 603, 363); //linea derecha nariz
  stroke (197, 197, 197);
  fill (72, 54, 50);
  ellipse (535, 172, 26, 34); //ojo izquierdo 1
  fill (16, 24, 37); //color de ojos
  ellipse (535, 172, 18, 26); // ojo izquierdo 2
  fill (255);
  ellipse (535, 163, 7, 7); // brillo ojo iz
  fill (72, 54, 50);
  ellipse (644, 177, 26, 34); //ojo derecho 1
  fill (16, 24, 37);
  ellipse (644, 177, 18, 26); //ojo derecho 2
  fill (255);
  ellipse (648, 170, 4, 4); //brillo derecho ojp
  fill (255);
  ellipse (640, 168, 4, 4); //brillo ojo derecho
  fill (202, 164, 175); //color manchita
  ellipse (570, 280, 20, 15); //manchita nariz
  stroke (173, 121, 107);
  line (541, 187, 535, 199);
  line (635, 188, 642, 206);
  stroke (197, 197, 197);
  line (585, 79, 585, 150);
  fill (246, 237, 242);
  ellipse (570, 200, 5, 7);
  ellipse (583, 201, 4, 6);
  ellipse (612, 217, 8, 10);
  ellipse (619, 182, 7, 9);
  ellipse (573, 247, 6, 8);
  ellipse (585, 244, 6, 8);
  ellipse (549, 273, 6, 8);
  ellipse (545, 141, 7, 9);
  ellipse (557, 165, 6, 8);
  fill (37, 35, 36);
  ellipse (584, 353, 8, 7);
  line (527, 320, 518, 328);
  line (532, 327, 526, 338);
  line (540, 336, 535, 348);
  line (633, 328, 642, 341);
  line (627, 342, 633, 351);
  line (617, 351, 620, 363);
}
