PImage Monopoly1 ,Monopoly2,Juego, Billetes, Tipos;
int pantalla = 0;
int miVariable = 1050;
int tiempo =0;
float y=0;
float x=0 ;
float dx=20;
PFont fuente;
String estado;
void setup() {
  size(640,480);
  fuente = loadFont("LetraMonopoly.vlw");
  textFont(fuente);
  textAlign(CENTER, CENTER);
  println(miVariable);
  x= width;
  
  Monopoly1=loadImage("Monopoly1 .jpeg");
  Monopoly2=loadImage("Monopoly2.png");
  Juego=loadImage("Juego.jpeg");
  Billetes=loadImage("Billetes.jpg");
  Tipos=loadImage("Tipos.jpg");
}

void draw() {
  
text(int(frameCount/60),100,100);
  if (pantalla == 0) {
   miVariable = frameCount/2;
    image(Monopoly1 ,0,0, width, height);
   textSize(20);
   fill(200,0,0);
    text("Monopoly  o Monopolio \n es un juego de mesa basado \n en el intercambio y la compraventa \n de bienes raíces.", miVariable, height/2);
    
  } else if (pantalla == 1) {
    textSize(20);
    image(Monopoly2 ,0,0, width, height);
   text("Los jugadores mueven sus respectivas \n fichas, por turnos en sentido horario alrededor  \n de un tablero, moviendo los dados.", width/2, y);
    y = y+1;
} else if (pantalla == 2) {
     image(Billetes ,0,0, width, height);
     textSize(20);
     fill(0);
    text(" Si caen en propiedades \n le que pueden comprar de un banco imaginario, \n o dejar que el banco las subaste  \n en caso de no ser compradas.", width/2, y);
 y= y-1;
} else if (pantalla == 3){
    image(Juego,0,0, width, height);
    textSize(20);
    textAlign(LEFT, CENTER);
   text("Si las propiedades en las que caen \n ya tienen dueños, los dueños pueden cobrar \n por pasar por su propiedad  \n o quien caiga podrá comprárselas,",x, height/2);
  x -=2;
  } else if (pantalla == 4){
    image(Tipos,0,0, width, height);
    textSize(20);
    fill(0);
   text("Este tiene varias tematicas,  \n entre ellas esta la versión digital \n esta es una  app la  \n cual podes jugar de manera online \n con otros",dx,y);
   dx +=1;
   y+=1;
 }
  
  if (frameCount == 60 * 10) {
    pantalla = 1;
  } else if (frameCount == 60 * 15) {
    pantalla = 2;
  } else if (frameCount == 60*20){
    pantalla =3;
  } else if (frameCount == 60*25){
    pantalla =4;
     } else if (frameCount == 60*30){
    pantalla =5;
    
    fill(255,0,0);
    rect(width - 110, 10, 100, 40);
  fill(255);
  textSize(16);
  text("REINICIAR", width - 95, 30);
}

println(frameCount);
println(mouseX + "/"+ mouseY);
}

void mousePressed() {
  frameCount =0;
  if (mouseX > width - 110 && mouseX < width - 10 && mouseY > 10 && mouseY < 50) {
    if(estado =="pantalla =4");
    pantalla = 0;
  text(int(frameCount/60),100,100);
  if (pantalla == 0) {
   miVariable = frameCount;
    image(Monopoly1 ,0,0, width, height);
   textSize(20);
   fill(200,0,0);
    text("Monopoly  o Monopolio \n es un juego de mesa basado \n en el intercambio y la compraventa \n de bienes raíces.", miVariable, height/2);
textAlign(CENTER, CENTER);
 dx=20;


    tiempo=0;
    miVariable = 1000;
   estado= "pantalla1";
    x = 0;
    y = 0;
    println("Presentación reiniciada");
  }
  }
  }
    
    
