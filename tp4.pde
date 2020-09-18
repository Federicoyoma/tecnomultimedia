int maxImagen = 13;
int cantPantallas = 13;
PImage [] imagenes = new PImage [maxImagen];
int pantalla = 1;
PFont fuente;
float posX = width * 0.25;
float posY = height * 2;
String [] textos = new String [36];
int [][][] botones = new int [cantPantallas][2][5];

void setup() {
  size(800, 600);
  imagen();
  fuente = loadFont("CenturyGothic-BoldItalic-30.vlw");
  arregloTextos();
  arregloBoton();
  
}

void draw() {
  tint(150);
  image(imagenes[pantalla], 0, 0, width, height);
  textFont(fuente);
  
 if (pantalla == 1 || pantalla == 4 || pantalla == 7 || pantalla == 10) {
    dibujarBotones(40, 530, 150, 50);
    dibujarBotones(570, 530, 150, 50);
  } else if (pantalla == 2 || pantalla == 3 || pantalla == 5 || pantalla == 6) {
    dibujarBotones(570, 530, 150, 50);
  } else if (pantalla == 8  || pantalla == 9 || pantalla == 11 || pantalla == 12) {
    dibujarBotones(280, 520, 250, 50);
  }

  textos();
}




void mouseClicked() {
  clickeo();
}
