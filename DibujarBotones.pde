void dibujarBotones(float X, float Y, float tamX, float tamY) {
  fill(255, 0, 0);
  rect(X, Y, tamX, tamY);
}


void clickeo() {
  
    if (mouseX > valorX(botones[pantalla][0][1]) && mouseX < valorX(botones[pantalla][0][2]) && mouseY > valorY(botones[pantalla][0][3]) && mouseY < valorY(botones[pantalla][0][4])) {
    pantalla = botones[pantalla][0][0];
    }
     else if (botones[pantalla][1].length > 0) { 
    if (mouseX > valorX(botones[pantalla][1][1]) && mouseX < valorX(botones[pantalla][1][2]) && mouseY > valorY(botones[pantalla][1][3]) && mouseY < valorY(botones[pantalla][1][4])) {
      pantalla = botones[pantalla][1][0];
    }
  }
}
