class Juego {

  //atributos
  int pantallas;
  int cantObstaculo=10;
  int chocarObstaculo;

  Blancanieves blancanieves;
  Obstaculo [] obstaculo = new Obstaculo [cantObstaculo];
  Fondo  fondoJuego;
  Pantalla pantallaComenzar, pantallaGanar, pantallaPerder, pantallaJugar;
  Contador contador;
  Boton botonComenzar, botonReiniciar;
  
  boolean perder, ganar, jugar;


  //constructores
  Juego() {
    
    this.pantallas=0;
    this.contador = new Contador(0);
    this.botonComenzar = new Boton(205, 220, 90, 40, "Comenzar", 0);
    this.botonReiniciar = new Boton(205, 235, 90, 40, "Reintentar", 0);
    
    this.pantallaComenzar= new Pantalla("A jugar!\n\nEsquiva todos los troncos para ganar", #FFFFFF); 
    this.pantallaGanar= new Pantalla("Felicidades ganaste!\n\nAhora podras escapar al bosque :D", #FFFFFF);
    this.pantallaPerder= new Pantalla("Oh no! perdiste\n\nTendras que enfrentar al cazador D:",#FFFFFF );
 
    this.fondoJuego = new Fondo(loadImage("bosquesito.png"));
    
    this.blancanieves = new Blancanieves();

      //arreglo de enemigos
    for (int i=0; i<this.cantObstaculo; i++){
      int posXObstaculo= 400 * (i+1);
      this.obstaculo[i] = new Obstaculo(posXObstaculo, 265);
    }
    this.ganar =false;
    this.perder =false;
    this.jugar =false; 
  }


  //acciones

  void dibujar(){
    //pantalla inicio
    if (this.empiezaJuego()){
      this.pantallaComenzar.dibujar();
      this.botonComenzar.dibujar();
      
      //pantalla juego
    }else if (this.estoyJugando()){
      this.fondoJuego.dibujar();
      this.contador.dibujar();
      this.blancanieves.dibujar();
      
      //dibujar arreglo de enemigos
      for (int i=0; i<this.cantObstaculo; i++){
        this.obstaculo[i].dibujar();
        this.obstaculo[i].moverObstaculo();
   
        //metodo perder
        if(blancanievesChocaObstaculo(this.blancanieves, this.obstaculo[i])){
          this.perder= true;
          //this.ganar=false;    
        }
      }        
     //perder y ganar
      if (ganar==true) {
      this.pantallaGanar.dibujar(); 
      this.botonReiniciar.dibujar();
    } else if(perder==true) {   
      this.pantallaPerder.dibujar();
      this.botonReiniciar.dibujar();
    }  
        }
    }
  
//retorno de pantallas
  boolean empiezaJuego() {
    return this.pantallas==0;
  }
  
  boolean estoyJugando() {
    return this.pantallas == 1;
  }
  
  void jugando(){
    this.jugar=true;
  }

//mouseclicked
  void mousePresionado(){
    if (this.empiezaJuego()){
      if(this.botonComenzar.empiezaJuego()){
      cambiarPantalla();
      }
     else if (this.estoyJugando() ){
         cambiarPantalla();
     }
      else if(ganar==true){
     cambiarPantalla();
    }
    
    else if(perder==true){
     cambiarPantalla();
    }
    }
  }

//cambio de pantalla
  void cambiarPantalla(){
    if (this.empiezaJuego()) {
      this.pantallas++;
    }
      else if (this.estoyJugando()) {
        this.pantallas=1;
      }
      else if (ganar==true){
        this.pantallas=0;     
      }
      else if (perder==true){
        this.pantallas=0;  
      }
  }
  


  boolean blancanievesChocaObstaculo(Blancanieves blancanieves, Obstaculo obstaculo){
    if (dist(blancanieves.posXBlancanieves, blancanieves.posYBlancanieves, obstaculo.posXObstaculo, obstaculo.posYObstaculo)<140){
      return true;
      
    }
    return false;
  }

   
   
  }
  
