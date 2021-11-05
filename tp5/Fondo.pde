class Fondo{
  
   //atributos
  
  PImage fondoJuego;
  
  
  int posXFondo, posYFondo, anchoFondo, altoFondo;
  boolean juego;
  //constructores
   Fondo(PImage fondoJuego ){
    this.fondoJuego =fondoJuego;
   
    this.anchoFondo = 500;
    this.altoFondo = 400;
    this.posXFondo = 0;
    this.posYFondo = 0;
   }
  
  
  //acciones
  void dibujar(){
    image(this.fondoJuego, this.posXFondo, this.posXFondo, this.anchoFondo, this.altoFondo);
 
  }
  
 
  }
  
