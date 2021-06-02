// agudo mayor a 90, vuelve a 0
//si no emitimos sonido no aumenta en X

import oscP5.*;

Guia guia;
Verticales verticales;
float x1=0;
float y1=300;



void setup() {

  size(1200, 600);
  background(235);


 
  guia= new Guia(x1, y1);
  verticales = new Verticales(x1);

}

void draw() {
  guia.dibujar();
  verticales.dibujar();
 
}
