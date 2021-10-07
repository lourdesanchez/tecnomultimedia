void titulo(color filltxt, int Tamtxt, int Tamtxt2) {
  fill(filltxt);
  textSize(Tamtxt);
  text("Blancanieves y los 7 enanitos", 15, 50);
  textSize(Tamtxt2);
  text("Aventura gráfica", 130, 100);
  noFill();
}


void botonIncicioYCreditos(int posX, int posY) {
  int ancho=140;
  int alto=50;

  if (mouseX>posX && mouseX<posX+ancho && mouseY>posY && mouseY<posY+alto) {
    fill(#B7AD74, 150);
    if (mousePressed) {
      fill(#837C52, 100);
    }
  }
  stroke(#000000);
  rect(posX, posY, ancho, alto);
  textFont(tipo2);
  textSize(20);
  fill(0);
  text("Comenzar", 205, 250);
  text("Creditos", 205, 373);
  noFill();
}


void opciones1(int posX, int posY, int tamX, int tamY) {
  noFill();
  fill(0);
  if (mouseX>posX && mouseX<posX+tamX && mouseY>posY && mouseY<posY+tamY) {
    fill(#1F1B1B);
  }
  stroke(#FFFFFF);
  rect(posX, posY, tamX, tamY);   
  textSize(10);
  fill(#FFFFFF);
  text("Huir al bosque", 15, 475);
  fill(#86FFAF);
  text("Enfrentar al\ncazador", 410, 470);
}

void opciones2(int posX, int posY, int tamX, int tamY) {
  noFill();
  fill(0);
  if (mouseX>posX && mouseX<posX+tamX && mouseY>posY && mouseY<posY+tamY) {
    fill(#1F1B1B);
  }
  stroke(#FFFFFF);
  rect(posX, posY, tamX, tamY);
  textSize(10);
  fill(#C43557);
  text("Escapar al \nbosque", 27, 473);
  fill(#86FFAF);
  text("Ir a confesar\nen el castillo", 405, 473);
}
