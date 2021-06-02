class Verticales {


//---------------------
//variables de calibracion
float minimoAmp = 45;
float maximoAmp = 100;
float minimoPitch = 44; //grave
float maximoPitch = 74; //agudo
boolean monitor = false;

float f = 0.9;
//---------------------
float amp;
float pitch;

GestorSenial gestorAmp;
GestorSenial gestorPitch;
//declaro el objeto osc
OscP5 osc;
  float x1;
  float moverv;


  Verticales(float xl) {
    this.x1=xl;
  gestorAmp = new GestorSenial(minimoAmp, maximoAmp,f);
  gestorPitch = new GestorSenial(minimoPitch, maximoPitch,f);

  //inicializo el obejeto osc
  osc = new OscP5(this, 12345);
  

  }


  void dibujar() {
    
  gestorAmp.actualizar(amp);
  gestorPitch.actualizar(pitch);

   //tamaños en X
    int  x2= int(random(4, 9));
    int  x3 = int(random(2, 8));
    int  x4 = int(random(1, 4));

  // float color1 = map(pitch, minimoPitch, maximoPitch,random(0,80), random(0,255));
  // float color2 = map(pitch, minimoPitch, maximoPitch,random(0,80), random(0,255));
  // float color3 = map(pitch, minimoPitch, maximoPitch,random(0,80), random(0,255));
   
  // float color1 = map(pitch, minimoPitch, maximoPitch,random(80), random(255));
  // float color2 = map(pitch, minimoPitch, maximoPitch,random(80), random(255));
  // float color3 = map(pitch, minimoPitch, maximoPitch,random(80), random(255));

 // float color1 = map(gestorAmp.filtradoNorm(), 0, 1, 0,50);
  
    noStroke();
    rectMode(CENTER);
    frameRate(35);
    

if(pitch < 47){ //azul
  fill(0,random(20,150),random(40,255));
}

if(pitch >= 47 && pitch < 55 ){ //rojo
   fill(random(40,255),13,random(20,50)); //120,70,50
}

if(pitch > 55 && pitch < 68 ){ //naranja
    fill(random(150,255),random(0,100),0); //230
}


if(pitch > 68 && pitch < 90 ){ //amarillo
    fill(random(200,255),random(110,200),random(30));
}


    rect(x1, random(245, 345), x2, random(-320, 320));    
    rect(x1, random(245, 345), x3, random(-270, 270));
    rect(x1, random(280, 320), x4, random(-420, 420));
    
 if(amp > 75){
    moverv=x1+3.2;  
    x1=moverv;
 }
 else{
  moverv --; 
 }
 
 if(pitch > 90){
   background(200);
  x1 = 0; 
 }
 
    if(x1 == width){
    background(235);
    x1 = 0; 
   }
  }
  
  void oscEvent(OscMessage m){
  if(m.addrPattern().equals("/amp")){
   amp = m.get(0).floatValue(); //cargo en la variable amp el primer dato del mensaje q entra
  println("amp:" + amp);
}

 if(m.addrPattern().equals("/pitch")){
   pitch = m.get(0).floatValue(); //cargo en la variable amp el primer dato del mensaje q entra
  println("pitch:" + pitch);
}

}
  
}
