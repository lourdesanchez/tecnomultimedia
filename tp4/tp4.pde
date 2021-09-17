//hola profe, el trabajo esta incompleto y sin diseñar pero se lo entrego igual para saber si voy mas o menos encaminada y así poder mejorar en el recuperatorio

PImage [] img;

String [] lineaTxt;

int imgmas;
int cantimg=10;
int txtmas;
int pantalla;
int  tamxyI=500;
//posxI =0, posyI=0

void setup(){
  size(500,500);
  
  int imgmas=0;
 
  img = new PImage [cantimg];
  
  for(int i=0; i<cantimg; i++){
    img[i] = loadImage(i+".jpg");   
  }
}

void draw(){
  background(0);
  ///inicio 
  if(pantalla==0){
    image(img[imgmas=0], 0,0, tamxyI, tamxyI);
     botonInc(20,220);
     botonInc(20,350);
     ///controles
   }else if(pantalla==1){
     ///creditos
   }else if(pantalla==2){
   ///inicio de aventura
   
   }else if(pantalla==3){
     image(img[imgmas=1],0,0, tamxyI, tamxyI);
     
  }else if(pantalla==4){
    image(img[imgmas=2], 0,0, tamxyI, tamxyI);
    
    ////desición
  }else if(pantalla==5){
    image(img[imgmas=3], 0,0, tamxyI, tamxyI);
    opciones(15,400,140,50);
    opciones(350,400,140,50);
    
    //////////historia principal
    
  }else if(pantalla==6){
    textSize(18);
    fill(#C14E78);
    text("Blancanives huye hacia el bosque en busca de ayuda\npero solo es socorrida por los animales, quienes\nla guían a una pequeña casita que se encontraba\npor los alrededores.",10,100);
    //image(img[imgmas=4], 0,0, tamxyI, tamxyI);
    
  }else if(pantalla==7){
    text("Blancanives se adentra a la pequeña casita\npero noto que no habia nadie adentro de ella\ny como estaba muy cansada decide acostarse\nen una de las camas y dormir.",10,100);
    //image(img[imgmas=5], 0,0, tamxyI, tamxyI);
    
  }else if(pantalla==8){
    text("Cuando se despierta, encuentra a 7 enanitos\nrodeandola, Blancanieves se asusta pero de inmediato\nse da cuenta de que no van a lastimarla.\nBlancanieves le cuenta su situación a los enanos\ny estos deciden ayudarla a cambio de que ella\ncuide la casa, Blancanives acepta y decide quedarse\ncon los enanos.",10,100);
    //image(img[imgmas=6], 0,0, tamxyI, tamxyI);
    
  }else if(pantalla==9){
    text("Al día siguiente los enanos se van a trabajar y\nBlancanieves se queda sola en la casa.\nTodo estaba tranquilo hasta que una anciana\nse asoma por la ventana y le ofrece a\nBlancanieves una manzana.\nBlancanieves tuvo que aceptar debido a la insistencia\nde la anciana y cuando muerde la manzna cae\ntotalmente desmayada.",10,100);
    //image(img[imgmas=7], 0,0, tamxyI, tamxyI);
    
  }else if(pantalla==10){
     text("Cuando los enanitos llegana a la casa ya era demasiado\ntarde. Blancanieves se encontraba tirada en el suelo\ntotalmente inconsciente.\nLos enanitos la dieron por muerta y comenzaron a\npreparar todo para su funeral.\nLa colocaron adentro de un ataud de cristal y la llevaron\nafuera.",10,100);
    //image(img[imgmas=8], 0,0, tamxyI, tamxyI);
    
  }else if(pantalla==11){
    text("De repente aprece un joven que estaba recorriendo\nlos alrededores y al ver a los enanos le dio curiosidad\npor lo que estaba pasando.\nSe acerca y lo primero que nota es el cuerpo de\nBlancanieves y al ver que los enanitos estaban llorando\nse da cuenta de la situación.\nSe acerca aun más al ataud y le da un beso a la princesa.",10,100);
  //image(img[imgmas=9], 0,0, tamxyI, tamxyI);
  }
  else if(pantalla==12){
     text("La princesa magicamente despierta y todos se quedan\nsorprendidos. El joven habia roto el hechizo que tenia\ndesmayada a la princesa.\nElla le agradece y el joven le propone ir a su reino para\nque la chequeara un doctor,Blancanieves acepta y\nse despide de los enanos para emprender otro viaje.\nFinalmente se casaron y vivieron felices\ncomiendo  perdices.",10,100);
     //textSize(25);
     text("Fin",50,450);
  }
  else if(pantalla==13){
    ///reinicio
  }
  //////////historia alternativa
  else if(pantalla==14){
   textSize(18);
   fill(#86FFAF);
   text("Blancanieves enfrenta al casador y logra apuñalarlo",10,100);
  }
  
  println(mouseX,mouseY);
}





   //println(mouseX,mouseY);


void mouseClicked(){
  
  if(pantalla==5 && mouseX>10 && mouseX<160 && mouseY>390 && mouseY<450){
    pantalla=6;  
  }
    
  if(pantalla==5 && mouseX>350 && mouseX<490 && mouseY>390 && mouseY<450){
    pantalla=14;
  }
}
  

void keyPressed(){
  if(keyCode== RIGHT){
   pantalla++;
  }else if(keyCode== LEFT){
    pantalla--;
  }
  
  
   /*if(pantalla==7){
    pantalla=9;
  }*/
  /*else if(pantalla==8){
    pantalla=8;
  }*/
  

  
  if(imgmas<0){
    imgmas=cantimg-1;
  }else if(imgmas>cantimg-1){
    imgmas=0;
  }
}
