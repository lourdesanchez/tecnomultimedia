/*PImage imagen;
int images=0;

PFont letra;

float puntitoX, puntitoY;

int direc, walt, names=17, names2, musica=-10, musica2=400, musica3, pjp=-10, pj=400, pj2=-0, sec=-30, secp=-70, secp2=0, secp3=0;

int pantalla, transparencia, contador;

void setup() {
  imagen=loadImage(images+".jpg");
  letra=loadFont("PalatinoLinotype-BoldItalic-48.vlw");
  size(500, 400);
  puntitoX=width/2;
  puntitoY=width/2;
}

void draw() {
  /////////////////////////////CLICK PARA COMENZAR////////////////////////
  if (pantalla==0) {
    background(0, 0, 0);
    textFont(letra);
    textSize(30);
    text("Click para comenzar", 100, 170);
  }
  /////////////////////////////PANTALLA1////////////////////////
  if (pantalla==1) {
    image(imagen, 0, 0, 500, 400);
    noStroke();
    ellipse(puntitoX=random(width), puntitoY=random(height), 10, 10);
    textSize(45);
    fill(#FFFCFE, transparencia);
    text("Blancanieves", 90, 60);
    transparencia=transparencia+5;
    textSize(30);
    text("y los 7 enanitos", 110, 100);
    textSize(35);
    text("FIN", 180, 210);
  }
  /////////////////////////////PANTALLA2////////////////////////
  else if (pantalla==2) {
    image(imagen, 0, 0, 500, 400);
    textSize(38);
    text("Una producción de\n Walt Disney", 20, walt);
    walt=walt+2;
    if (walt>=40) {
      walt=40;
    }
  }


  /////////////////////////////PANTALLA3////////////////////////
  else if (pantalla==3) {
    image(imagen, 0, 0, 500, 400);
    textSize(35);
    fill(#FCFEFF);
    text("Dirección", 160, direc);
    textSize(23);
    text("David Hand          Mickey Mouse\nWilfred Jackson    Bambi\nBen Sharpsteen     William Jackson\nOlaf                    Tarzan\nLilo                     Stitch\nScar                    Úrsula\nJafar                   Pluto", 90, names);
    direc=direc+2;
    names=names+3;
    if ((direc>60)&&(direc>=60)) {
      direc=60;
    }
    if ((names>87)&&(names>=87)) {
      names=87;
    }
  } 
  /////////////////////////////PANTALLA4////////////////////////
  else if (pantalla==4) {
    image(imagen, 0, 0, 500, 400);
    textSize(25);
    text("Larry Morey          Pato Donald\nPerce Pearce          Merida\nTed Sears             Cruella\nMike Wazowski    Yzma", 100, names2);
    names2=names2+2;
    if (names2>=70) {
      names2=70;
    }
  }
  /////////////////////////////PANTALLA5////////////////////////
  else if (pantalla==5) {
    image(imagen, 0, 0, 500, 400);
    textSize(40);
    text("Música", 100, musica);
    textSize(23);
    text("Minie Mouse     Shrek\nCenicienta        Caperucita Roja\nChayanne         Frank Churchill\nPooh                Tigger\nArie                 Múlan\nElsa                 Anna\nJasmine           Rapunzel", 30, musica2);
    musica=musica+2;
    musica2=musica2-4;
    if (((musica>=50)||(musica2<=50))) {
      musica=50;
    }
    if ((musica>=80)||(musica2<=80)) {
      musica2=80;
    }
  }
  /////////////////////////////PANTALLA6////////////////////////
  else if (pantalla==6) {
    image(imagen, 0, 0, 500, 400);
    textSize(23);
    text("Goofy\nMax\nDio\nTyler Joseph\nJosh Dun\nLuis Miguel", 50, musica3);
    musica3=musica3+2;
    if (musica3>=80) {
      musica3=80;
    }
  }
  /////////////////////////////PANTALLA7////////////////////////
  else if (pantalla==7) {
    image(imagen, 0, 0, 500, 400);
    textSize(35);
    text("Personajes Principales", 20, pjp);
    textSize(20);
    text("Blancanieves\nDoc\nTímido\nDormilón\nEstornudo", 90, pj);
    pjp=pjp+2;
    pj=pj-4;
    if ((pjp>=40)&&(pjp<=70)) {
      pjp=40;
    }
    if ((pj>=40)&&(pj<=70)) {
      pj=70;
    }
  }
  /////////////////////////////PANTALLA8////////////////////////
  else if (pantalla==8) {
    image(imagen, 0, 0, 500, 400);
    textSize(20);
    text("Feliz\nGruñon\nTontin\nLa Reina", pj2, 30);
    textSize(30);
    text("Secundarios", sec, 190);
    textSize(20);
    text("Principe Ferdinand\nEl Cazador\nEl Espejo", secp, 220);
    pj2=pj2+3;
    sec=sec+3;
    secp=secp+3;
    if ((pj2>=90)  &&  (sec>=80) && (secp>=80)) {
      pj2=90;
      sec=80;
      secp=80;
    }
  }
  /////////////////////////////PANTALLA9////////////////////////
  else if (pantalla==9) {
    image(imagen, 0, 0, 500, 400);
    textSize(20);
    text("Bambi\nAlvin y las ardillas\nBirds\nConejos", 300, secp2);
    text("Mapaches\nCaballos\nCiervo", secp3, 90);
    secp2=secp2+2;
    secp3=secp3+2;
    if ((secp2>=50) && secp3>=30) {
      secp2=50;
      secp3=30;
    }
  }
  /////////////////////////////PANTALLA10////////////////////////
  else if (pantalla==10) {
    image(imagen, 0, 0, 500, 400);
    textSize(13);
    fill(#050505);
    text("©Walt Disney Originals", 180, 390);
  }

  contador++;
  if ((contador % 200)==0) {
    images++;
    pantalla=pantalla+1;
    imagen=loadImage(images+".jpg");
    if (images==10) {
      images=0;
    }
  }
  println(contador);
}





void mouseClicked() {
  if (pantalla==0) {
    pantalla=1;
  }
}*/
