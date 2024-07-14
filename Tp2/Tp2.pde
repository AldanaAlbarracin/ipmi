//Recuperatorio
//albarracin aldana
//tp2 comision 1

PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;

String texto0 = "¡BIENVENDIDXS!";
String texto1 = "HOUSE";
String texto1b = "OF";
String texto1c = "THE";
String texto1d = "DRAGON";
String texto2 ="Es una precuela de la serie \n'Game of Thrones'.\nLa trama se desarrolla aproximadamente \n100 años de que los Siete Reinos \nse unieran bajo la conquista de \nlos Targaryen.";
String texto3 ="La serie sigue los eventos que \nllevaron al declive de la Casa Targaryen,\ndurante la devastadora guerra de sucecion, \nconocida como \nla 'Danza de los Dragones'";
String texto4 ="FIN.";

PFont fuente1;
PFont fuente2;
PFont fuente3;
PFont fuente4;
PFont fuente5;
PFont fuente6;

int tiempo = 0;
boolean ultimaimagen = false;

int frameCount = 0;

//ANIMACIONES
float primertexto = -100;
float velocidadY =2;
float primertexto1b;
float DireccionX = -1;
float primertexto1c;
float primertexto1d;
float segundotexto = -100;
float tercertextoX = width/2;
float velocidadX = 2.5;
float direccionX = 1;
float cuartotexto;






void setup () {
  size (640, 480);
  imagen1 = loadImage("imagen 1.jpg");
  imagen2 = loadImage("imagen 2.jpeg");
  imagen3 = loadImage("imagen 3.jpg");
  imagen4 = loadImage("imagen 4.jpg");
  
  fuente1 = loadFont ("Verdana-Bold-50.vlw");
  textFont (fuente1);
  fuente2 = loadFont ("Bahnschrift-30.vlw");
  textFont (fuente2);
  fuente3 = loadFont ("TrebuchetMS-32.vlw");
  textFont (fuente3);
  fuente4 = loadFont ("SegoeUIBlack-100.vlw");
  textFont (fuente4);
  fuente5 = loadFont ("CambriaMath-40.vlw");
  textFont (fuente5);
  fuente6 =loadFont ("Calibri-Light-20.vlw");
  textFont (fuente6);
  
  //ANIMACIONES
  primertexto = -100;
  primertexto1b = width;
  primertexto1c = -100;
  primertexto1d = height;

  tiempo = frameCount;
}

void draw () {
  frameCount++;

  if (frameCount - tiempo >= 300  && !ultimaimagen) {
    tiempo = frameCount;
    ultimaimagen = true;
  }
  if (ultimaimagen) {
    if (frameCount - tiempo < 300) {
      image (imagen1, 0, 0, 640, 480);
      textFont (fuente1);
      textAlign (CENTER, CENTER);
      primertexto += velocidadY;
      if (primertexto >= 160) {
        primertexto = 160;
      }
      fill(255);
      textSize (50);
      text(texto1, 320, primertexto);

      if (primertexto1b > 320) {
        primertexto1b += velocidadX * DireccionX;
      }
      fill(255);
      textSize (50);
      text(texto1b, primertexto1b, 200);

      if (primertexto1c < 320) {
        primertexto1c += velocidadX * direccionX;
        if (primertexto1c >= 320) {
          primertexto1c =320;
        }
      }
      fill(255);
      textSize (50);
      text(texto1c, primertexto1c, 240);

      if (primertexto1d > 280) {
        primertexto1d -= velocidadY;
      }
      text(texto1d, 320, primertexto1d);
    } else if (frameCount - tiempo < 600) {
      image(imagen2, 0, 0, 640, 480);
      textFont(fuente2);
      segundotexto +=2.5;
      fill(255);
      textSize (30);
      text(texto2, 320, segundotexto);
    } else if (frameCount - tiempo < 900) {
      textFont (fuente3);
      image(imagen3, 0, 0, 640, 480);
      tercertextoX +=velocidadX *direccionX;
      if (tercertextoX > width || tercertextoX <0) {
        direccionX *= 1;
      }
      fill(255);
      textSize (32);
      text(texto3, tercertextoX, 250, 300);
    } else {
      image(imagen4, 0, 0, 640, 480);
      textFont (fuente6);
      fill(200);
      rect(width / 2 - 50, height - 60, 100, 40);
      fill(0);
      textSize (20);
      textAlign(CENTER, CENTER);
      text("Reiniciar", width / 2, height - 40);
      translate (width/2, height/2);
      rotate(cuartotexto);
      textFont (fuente4);
      fill(255);
      textSize(100);
      textAlign (CENTER);
      text(texto4, 0, 0);
      cuartotexto += 0.05;
    }
  } else {
    image (imagen1, 0, 0, 640, 480);
    textFont (fuente5);
    fill(255);
    textSize (40);
    textAlign (CENTER, CENTER);
    text(texto0, 320, 240);
  }
}


void mousePressed() {
  if (ultimaimagen) {
    if (mouseX > width / 2 - 50 && mouseX < width / 2 + 50 &&
      mouseY > height - 60 && mouseY < height - 20) {
      tiempo = frameCount;
      ultimaimagen = false;
      primertexto = -100;
      primertexto1b = width;
      primertexto1c =-100;
      primertexto1d = height;
      segundotexto = -100;
      tercertextoX = width / 2;
      cuartotexto = 0;
    }
  }
}
