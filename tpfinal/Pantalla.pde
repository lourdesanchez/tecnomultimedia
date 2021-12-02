class Pantalla {

  //atributos

  //para aventura
  PImage  numImg;
  PFont tipografia;
  String texto;

  //color fillTxt, fondo;
  int posXImg, posYImg, tamTxt, posXTxt, posYTxt;


  //para creditos
  PImage imgCreditos;
  PFont tipografia_C;
  String txt_C;
  int numImgCreditos,tamTxt_C, transparencia ;



  //constructores
  Pantalla(int numImg_, int posXImg_, int posYImg_, String texto_, int tamTxt_, int posXTxt_, int posYTxt_) {

    this.tipografia = loadFont("Consolas-48.vlw");

    this.numImg = loadImage( numImg_ + ".jpg");
    this.posXImg = posXImg_;
    this.posYImg = posYImg_;
    this.tamTxt = tamTxt_;
    this.texto = texto_;
    this.posXTxt = posXTxt_;
    this.posYTxt = posYTxt_;
  }
  
  
  Pantalla(int numImgCreditos_, int tamTxt_C_, String txt_C_){
    
    
    this.tipografia_C = loadFont("PalatinoLinotype-BoldItalic-48.vlw");
    this.imgCreditos =loadImage( "0" + numImgCreditos_ + ".jpg");
    this.tamTxt_C = tamTxt_C_;
    this.txt_C = txt_C_;
    this.transparencia=0;
    
  }



  //metodos
  void dibujarPantallas() {
    background(0);
    image(this.numImg, 0, 0, this.posXImg, this.posYImg);
    fill(#FFFFFF);
    textFont(this.tipografia);
    textSize(this.tamTxt);
    text(this.texto, this.posXTxt, this.posYTxt);
  }

  void dibujarPantallaCreditos(int posX, int posY) {
    background(0);
    image(this.imgCreditos, 0, 0, 500, 500);
    fill(#FFFFFF, transparencia);
    textFont(this.tipografia_C);
    textSize(this.tamTxt_C);
    this.transparencia=transparencia+5;
    text(this.txt_C, posX, posY /*this.posXtxt_C, this.posYTxt_C*/);
  }
}
