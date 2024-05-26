//tp2 comision 1
//albarracin aldana


//imagen
int maxImages = 4;
PImage [] images = new PImage [maxImages];

int step = 0;
long ts; // tiempo de inicio de cada pantalla
long[] tiemposPantalla = {30000, 30000, 30000}; //duracion de cada pantalla

//texto primer pantalla
String texto = "'LA VIDA ES BELLA' \nEs una película italiana, \ndirigida por Roberto Benigni en 1997.\nLa película cuenta la historia de un padre que \nintenta proteger a su hijo pequeño de las \natrocidades de un campo de \nconcentración nazi.";

//fuente primer pantalla
PFont fuente1;
float anchoTexto; //ancho del texto


//posicion texto primer pantalla
float yInicial = -200; // posicion inicial arriba de la pantalla
float yFinal = 400; // posicion final en el centro de la pantalla
float yTexto; 


//segunda pantalla
PFont fuente2;
String texto2 = "La Vida es Bella ganó un total \nde tres premios Oscar en el año 1999.\n Tambien ganó el premio a \n'Mejor Película Extranjera','Mejor Actor' y \n'Mejor Música Original' en los \nPremios de la Academia de 1999. \nAdemás de los premios Oscar, \nLa vida es bella ganó tres premios BAFTA.";

// posicion horizontal del texto
float xTexto = width / 2; // posicion inicial en el centro de la ventana
float velocidadX = 2; // velocidad de desplazamiento horizontal
float direccionX = 1; // direccion inicial

//tercer pantalla,posicion vertical del texto
//fuente
PFont fuente3;
String texto3 = "¿SABIAS QUE... \nLos protagonista de esta película, \nNicoletta Braschi y Roberto Benigni, \neran pareja en la vida real?";

// posicion vertical y tamaño del texto de la tercera pantalla
float yTextoTerceraPantalla;
float tamanoTextoTerceraPantalla;

//boton
int tiempo = 0;
boolean mostrarBoton = false;
long tiempoUltimaPantalla;


void setup() {
  size(640, 480);
  ts = millis();
  tiempoUltimaPantalla = millis();

  //fuente primer pantalla
  fuente1 = loadFont ("TimesNewRomanPS-BoldItalicMT-20.vlw");
  textFont(fuente1);

  anchoTexto = textWidth (texto);
  yTexto = yInicial;// posicion vertical del texto

  //fuente segunda pantalla
  fuente2 = loadFont ("MalgunGothicBold-20.vlw");
  textFont(fuente2);

  //fuente tecer pantalla
  fuente3 = loadFont ("ArialMT-13.vlw");
  textFont (fuente3);

  //imagenes
  images [0] = loadImage ("imagen_0.jpg");
  images [2] = loadImage ("imagen_2.jpg");
  images [3] = loadImage ("imagen_3.jpg");

  // texto de la tercera pantalla
  yTextoTerceraPantalla = height / 2;
  tamanoTextoTerceraPantalla = 24;
  textAlign(LEFT, CENTER);
  fill(255);
  textSize(tamanoTextoTerceraPantalla);
}


void draw() {
  background(255);
  if (millis() - ts > tiemposPantalla[step]) {
    if (step < tiemposPantalla.length - 1) { // cambiar a la siguiente pantalla (excepto si estamos en la ultima)
      step = (step + 1) % tiemposPantalla.length; 
      ts = millis(); // actualizar el tiempo de inicio
    }
    // si estamos en la ultima pantalla el tiempo se detiene
  }

  //contenido de pantallas
  if (step == 0) { //primer pantalla
    image(images[0], 0, 0, 640, 480);
    textFont(fuente1);
    fill(255); 
    textSize(24);
    yTexto = lerp(yInicial, yFinal, (millis() - ts) / (float) tiemposPantalla[step]); // Animación vertical
    text(texto, 40, yTexto);
  } else if (step == 1) { //segunda pantalla
    image(images[2], 0, 0, 640, 480);
    textFont(fuente2);
    // desplazamiento y rebote
    xTexto += velocidadX * direccionX;
    if (xTexto > width || xTexto < 0) {
      direccionX *= -1;
    }
    fill(255);
    textSize(24);
    textAlign(CENTER);
    text(texto2, xTexto, 50);
  } else if (step == 2) { //tercera pantalla
    image(images[3], 0, 0, 640, 480);
    textFont(fuente3);
   
    if (millis() - tiempoUltimaPantalla > 5000) {
      //boton de reinicio
      fill(200);
      rect(width - 100, height - 40, 80, 30); //forma del boton
      fill(0);
      textSize(16);
      text("Reiniciar", width - 90, height - 20);
    }

    // animacion del texto
    float t = (millis() - ts) / (float) tiemposPantalla[step];
    yTextoTerceraPantalla = lerp(-100, height / 2, t);
    float escala = map(t, 0, 1, 1, 2); 
    scale(escala);

    // texto escalado y animado
    fill(255);
    textSize(tamanoTextoTerceraPantalla);
    textAlign(LEFT); // alinea el texto a la izquierda
    text(texto3, 50, yTextoTerceraPantalla);
  }
}
void mousePressed() {
  // verificacion del click en el boton
  if (step == 2 && mouseX > width - 100 && mouseX < width - 20 && mouseY > height - 40 && mouseY < height - 10) {
    step = 0; // reiniciar a la primera pantalla
    ts = millis(); // reiniciar el tiempo de inicio
    tiempoUltimaPantalla = millis(); // reiniciar el tiempo de la ultima pantalla
  }
}
