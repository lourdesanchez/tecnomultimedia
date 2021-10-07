void final1(int posX, int posY) {
  int ancho=100;
  int alto=40;

  fill(0);
  if (mouseX>posX && mouseX<posX+ancho && mouseY>posY && mouseY<posY+alto) {
    fill(#1F1B1B);
  }
  rect(posX, posY, ancho, alto);

  fill(#FFFFFF);
  textSize(30);
  text("Fin.", 20, 470);
  textSize(15);
  text("Reiniciar", 388, 470);
}

void final2(int posX, int posY) {
  int ancho=100;
  int alto=40;

  fill(0);
  if (mouseX>posX && mouseX<posX+ancho && mouseY>posY && mouseY<posY+alto) {
    fill(#1F1B1B);
  }
  stroke(#86FFAF);
  rect(posX, posY, ancho, alto);

  fill(#86FFAF);
  textSize(25);
  text("Fin", 20, 470);
  textSize(15);
  text("Reiniciar",388, 470);
}


void final3(int posX, int posY) {
  int ancho=100;
  int alto=40;

  fill(0);
  if (mouseX>posX && mouseX<posX+ancho && mouseY>posY && mouseY<posY+alto) {
    fill(#1F1B1B);
  }
  stroke(#C43557);
  rect(posX, posY, ancho, alto);
  fill(#C43557);
  textSize(25);
  text("Fin", 20, 470);
  textSize(15);
  text("Reiniciar", 388, 470);
}
