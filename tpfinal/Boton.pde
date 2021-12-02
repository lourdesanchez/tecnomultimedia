class Boton{
  
  //atributos
  String txt;
  color fillTxt,fillRect ;
  int posX, posY, tamX, tamY, tamTxt, POSXT, POSYT;
  
  
  //constructores
  Boton(color fillRect_, String txt_,int tamTxt_, int posX_T, int posY_T, int posX_r, int posY_r, int tamX_r, int tamY_r){
   
    this.txt = txt_;
    this.tamTxt= tamTxt_;
    //this.fillTxt = _fillTxt;
    this.posX = posX_r;
    this.posY = posY_r;
    this.tamX = tamX_r;
    this.tamY = tamY_r;
  
   this.fillRect = fillRect_;
   
   this.POSXT= posX_T;
   this.POSYT = posY_T;
   
  }
  
  
  //metodos
  void dibujar(){
    if (mouseX>this.posX && mouseX<this.posX + this.tamX && mouseY>this.posY && mouseY<this.posY + this.tamY){
      fill(this.fillRect, 150); //#B7AD74
    }else{
      fill(this.fillRect, 100); //#837C52
    }
   rect(this.posX, this.posY, this.tamX, this.tamY, 5);
  
   fill(0);//this.fillTxt);//0
   textSize(this.tamTxt);
   text(txt,this.POSXT, this.POSYT );
  }
  
  
  boolean mouseSobreBoton(){
    if(mouseX>this.posX && mouseX<this.posX+this.tamX && mouseY>this.posY && mouseY<this.posY + this.tamY){
      return true;
    }else{
      return false;
    }
  }
 
  
 
}
