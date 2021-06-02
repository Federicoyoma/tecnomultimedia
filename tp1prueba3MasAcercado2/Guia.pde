class Guia {


  float x1, y1;
  float mover;

  //constructor 
  Guia(float x1, float y1) {

    this.x1=x1;
    this.y1=y1;

    // verticales = new Verticales(x1);
  }

  void dibujar() {

    mover=x1+1;
    x1=mover;
    rect(x1, y1, 0, 0);
    
  }
  
   
}
