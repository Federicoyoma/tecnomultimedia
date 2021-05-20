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
    int  x4 = int(random(1, 3));

  // float color1 = map(pitch, minimoPitch, maximoPitch,random(0,80), random(0,255));
  // float color2 = map(pitch, minimoPitch, maximoPitch,random(0,80), random(0,255));
  // float color3 = map(pitch, minimoPitch, maximoPitch,random(0,80), random(0,255));
   
  // float color1 = map(pitch, minimoPitch, maximoPitch,random(80), random(255));
  // float color2 = map(pitch, minimoPitch, maximoPitch,random(80), random(255));
  // float color3 = map(pitch, minimoPitch, maximoPitch,random(80), random(255));

 // float color1 = map(gestorAmp.filtradoNorm(), 0, 1, 0,50);
  
    noStroke();
    rectMode(CENTER);
    frameRate(30);
    

if(pitch < 47){
  fill(random(55),random(170),random(245));
}
if(pitch > 48 && pitch < 65 ){
    fill(random(250),random(100),random(55));
}
if(pitch > 66 && pitch < 90 ){
    fill(random(250),random(255),random(55));
}

    rect(x1, random(245, 345), x2, random(-300, 300));    
    rect(x1, random(245, 345), x3, random(-270, 270));
    rect(x1, random(245, 345), x4, random(-380, 380));
    
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
