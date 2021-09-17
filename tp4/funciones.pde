void botonInc(int posX, int posY){
   int ancho=140;
   int alto=50;
   if(pantalla==0){
   fill(255);
   if(mouseX>posX && mouseX<160 && mouseY>posY && mouseY<270){
     fill(150);
     if(mousePressed){
       fill(255);
       pantalla=3;
     }/*else if(mouseX>20 && mouseX<160 && mouseY>350 && mouseY<400){
       fill(150);
     }if(mousePressed){
       fill(255);
       pantalla=2;
   }*/
   }
   textSize(30);
   text("Blancanieves y los 7 enanitos",30,40);
   textSize(25);
   text("Aventura gráfica",140,100);
   rect(posX,posY,ancho, alto);
   fill(#77C3DE);
   textSize(20);
   text("Comenzar",27,250);
   text("Creditos",38,385);
 }
}

void opciones(int posX, int posy, int tamX, int tamY) {

  if (pantalla==5) {
   fill(255);
   if(mouseX>15 && mouseX<40 && mouseY>450 && mouseY<500){
     fill(150);
   }
    rect(posX,posy, tamX, tamY);   
    }
    textSize(15);
    fill(0);
    text("Huir al bosque",30,430);
    text("Enfrentar al\ncazador",370,420);
    }

void Textos(){
  
}
