//https://youtu.be/xPO7PmZu0Rg

PImage [] img;
PImage [] imgCreditos;
String [] lineaTxt;
String [] hPrincipal;
String [] hAlterna;

PFont tipo2;

int cantimg=23;
int cantImgCreditos=10;
int pantalla;
int separacion=20;

int pantalla2;////////VARIABLE PARA CREDITOS

void setup() {
  size(500, 500);

  img = new PImage [cantimg];
  imgCreditos = new PImage [cantImgCreditos];
  lineaTxt = loadStrings("cuento.txt");
  hPrincipal = loadStrings("historia principal.txt");
  hAlterna = loadStrings("historia sec.txt");

  for (int i=0; i<cantimg; i++) {
    img[i] = loadImage(i+".jpg");
  }
  for(int i=0; i<cantImgCreditos; i++){
   imgCreditos[i] = loadImage("0" + i + ".jpg");
  }
 
  tipo2=loadFont("Consolas-48.vlw");


  puntitoX=width/2;
  puntitoY=width/2;
  letra=loadFont("PalatinoLinotype-BoldItalic-48.vlw");
}


void draw() {
  background(0);
  textSize(13);
  /////////////////INICIO////////////////
  if (pantalla==0) {
    image(img[0], 0, 0, 500, 500);
    botonIncicioYCreditos(180, 220);
    botonIncicioYCreditos(180, 340);
    titulo(color(#FFFFFF), 30, 25);
  } else if (pantalla==1) {
    image(img[1], 0, 0, 650, 410);
    for (int i=0; i<2; i++) {
      text(lineaTxt[i], 10, 450+separacion*i);
    }
  } else if (pantalla==2) {
    image(img[2], 0, 0, 500, 410);
    for (int i=0; i<4; i++) {
      text(lineaTxt[i+2], 10, 430+separacion*i);
    }

    /////////////DECISIÓN///////////////////
  } else if (pantalla==3) {
    image(img[3], 0, 0, 500, 370);
    for (int i=0; i<3; i++) {
      fill(#FFFFFF);
      text(lineaTxt[i+6], 10, 390+separacion*i);
    }
    opciones1(5, 445, 100, 50);
    opciones1(395, 445, 100, 50);

    //////////HISTORIA PRINCIPAL//////////////
  } else if (pantalla==4) {
    image(img[4], 0, 0, 500, 410);
    for (int i=0; i<4; i++) {
      fill(#FFFFFF);
      text(hPrincipal[i], 10, 430+separacion*i);
    }
  } else if (pantalla==5) {
    image(img[5], 0, 0, 500, 410);
    for (int i=0; i<4; i++) {
      text(hPrincipal[i+4], 10, 430+separacion*i);
    }
  } else if (pantalla==6) {
    image(img[6], 0, 0, 500, 410);
    for (int i=0; i<3; i++) {
      text(hPrincipal[i+8], 10, 440+separacion*i);
    }
  } else if (pantalla==7) {
    image(img[7], 0, 0, 500, 410);
    for (int i=0; i<4; i++) {
      text(hPrincipal[i+11], 10, 430+separacion*i);
    }
  } else if (pantalla==8) {
    image(img[8], 0, 0, 500, 410);
    for (int i=0; i<4; i++) {
      text(hPrincipal[i+15], 10, 430+separacion*i);
    }
  } else if (pantalla==9) {
    image(img[9], 0, 0, 500, 390);
    for (int i=0; i<5; i++) {
      text(hPrincipal[i+19], 10, 410+separacion*i);
    }
  } else if (pantalla==10) {
    image(img[10], 0, 0, 500, 410);
    for (int i=0; i<4; i++) {
      text(hPrincipal[i+24], 10, 430+separacion*i);
    }
  } else if (pantalla==11) {
    image(img[11], 0, 0, 500, 400);
    for (int i=0; i<5; i++) {
      text(hPrincipal[i+28], 10, 417+separacion*i);
    }
  } else if (pantalla==12) {
    image(img[12], 0, 0, 500, 400);
    for (int i=0; i<3; i++) {
      text(hPrincipal[i+33], 10, 430+separacion*i);
    }
  } else if (pantalla==13) {
    image(img[13], 0, 0, 500, 390);
    for (int i=0; i<4; i++) {
      text(hPrincipal[i+36], 10, 420+separacion*i);
    }
  } else if (pantalla==14) {
    image(img[17], 0, 0, 500, 430);
    finales(375, 445, color(#FFFFFF));
  }
  /////////////////////HISTORIA ALTERNATIVA1///////////////////
  else if (pantalla==15) {
    image(img[14], 0, 0, 500, 400);
    for (int i=0; i<3; i++) {
      text(hAlterna[i], 10, 430+separacion*i);
    }
  } else if (pantalla==16) {
    image(img[22], 0, 0, 500, 350);
    for (int i=0; i<5; i++) {
      text(hAlterna[i+3], 10, 368+separacion*i);
    }
    opciones2(5, 455, 100, 40);
    opciones2(395, 455, 100, 40);
  } else if (pantalla==17) {
    image(img[15], 0, 0, 500, 400);
    for (int i=0; i<3; i++) {
      text(hAlterna[i+8], 10, 430+separacion*i);
    }
  } else if (pantalla==18) {
    image(img[19], 0, 0, 500, 400);
    for (int i=0; i<4; i++) {
      text(hAlterna[i+11], 10, 430+separacion*i);
    }
  } else if (pantalla==19) {
    image(img[20], 0, 0, 500, 430);
    finales(375, 445,color(#86FFAF));
  }

  ///////////////////HISTORIA ALTERNATIVA2///////////////////
  else if (pantalla==20) {
    image(img[16], 0, 0, 500, 430);
    for (int i=0; i<3; i++) {
      fill(#C43557);
      text(hAlterna[i+15], 10, 450+separacion*i);
    }
  } else if (pantalla==21) {
    image(img[18], 0, 0, 500, 430);
    for (int i=0; i<3; i++) {
      text(hAlterna[i+18], 10, 460+separacion*i);
    }
  } else if (pantalla==22) {
    image(img[21], 0, 0, 500, 430);
    fill(#C43557);
    finales(375, 445,color(#C43557));
  } else if (pantalla==23) {
    pantalla2= creditos(pantalla2);
  }
}



void mouseClicked() {
  if (pantalla==0 &&  mouseX>200 && mouseX<340 && mouseY>220 && mouseY<270) {
    pantalla=1;
  } 
  //////////////////////////////////OPCIONES1//////////////////////////////
  if (pantalla==3 && mouseX>7 && mouseX<105 && mouseY>440 && mouseY<490) {
    pantalla=4;
  }
  /////////////////////////////ENFRENTAR AL CAZADOR////////////////////////
  if (pantalla==3 && mouseX>390 && mouseX<490 && mouseY>440 && mouseY<490) {
    pantalla=15;
  }
  ///////////////////////////////////FINAL1///////////////////////////////////
  if (pantalla==14 && mouseX>370 && mouseX<470 && mouseY>440 && mouseY<480) {
    pantalla=0;
  }
  ///////////////////////////////////OPCIONES2/////////////////////////////////
  if (pantalla==16 && mouseX>10 && mouseX<110 && mouseY>440 && mouseY<490) {
    pantalla=20;
  }
  //////////////////////////IR A CONFESAR AL CASTILLO//////////////////////////
  if (pantalla==16 && mouseX>390 && mouseX<490 && mouseY>440 && mouseY<490) {
    pantalla=17;
  }
  //////////////////////////FINAL2////////////////////////////////////////////
  if (pantalla==19 && mouseX>350 && mouseX<490 && mouseY>420 && mouseY<470) {
    pantalla=0;
  }
  //////////////////////////FINAL3////////////////////////////////////////////
  if (pantalla==22 && mouseX>400 && mouseX<490 && mouseY>420 && mouseY<470) {
    pantalla=0;
  }
  //////////////////////////CREDITOS////////////////////////////////////////////
  if (pantalla==0 && mouseX>180 && mouseX<320 && mouseY>340 && mouseY<390) {
    pantalla=23;
  }
  //////////////////////////REINICIO////////////////////////////////////////////
  if (pantalla2>=10 && mouseX>10 && mouseX<100 && mouseY>15 && mouseY<60) {
    pantalla=0;
  }
}


void keyPressed() {
  if (pantalla==1 && keyCode== RIGHT) {
    pantalla=2;
  } else if (pantalla==2 && keyCode== RIGHT) {
    pantalla=3;
  } else if (pantalla==4 && keyCode== RIGHT) {
    pantalla=5;
  } else if (pantalla==5 && keyCode== RIGHT) {
    pantalla=6;
  } else if (pantalla==6 && keyCode== RIGHT) {
    pantalla=7;
  } else if (pantalla==7 && keyCode== RIGHT) {
    pantalla=8;
  } else if (pantalla==8 && keyCode== RIGHT) {
    pantalla=9;
  } else if (pantalla==9 && keyCode== RIGHT) {
    pantalla=10;
  } else if (pantalla==10 && keyCode== RIGHT) {
    pantalla=11;
  } else if (pantalla==11 && keyCode== RIGHT) {
    pantalla=12;
  } else if (pantalla==12 && keyCode== RIGHT) {
    pantalla=13;
  } else if (pantalla==13 && keyCode== RIGHT) {
    pantalla=14;
  } else if (pantalla==15 && keyCode== RIGHT) {
    pantalla=16;
  } else if (pantalla==17 && keyCode== RIGHT) {
    pantalla=18;
  } else if (pantalla==18 && keyCode== RIGHT) {
    pantalla=19;
  } else if (pantalla==20 && keyCode== RIGHT) {
    pantalla=21;
  } else if (pantalla==21 && keyCode== RIGHT) {
    pantalla=22;
  }
}
