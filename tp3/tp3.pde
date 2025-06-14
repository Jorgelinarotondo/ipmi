//https://youtu.be/cMOP-v_6ATg

PImage Rosayvioleta;
boolean modoInteractivo = true;
int  modoColor= 1;
float tamaño = 20;
  
void setup() {
  size(800, 400);
  Rosayvioleta = loadImage("Rosayvioleta.jpg"); 
  Rosayvioleta.resize(400,400);
  noStroke();
 }
void draw() {
  background(255);
  image(Rosayvioleta,0,0);
  translate(400, 0);

  if (modoInteractivo) {
    float distancia = dist(mouseX, mouseY, width/2, height/2);
    tamaño = map(distancia, 0, width/2, 12, 30);
  }

  int columnas = width / int(tamaño);
  int filas = height / int(tamaño);

  for (int col = 0; col < columnas; col++) {
    for (int fila = 0; fila < filas; fila++) {
      float x = col * tamaño;
      float y = fila * tamaño;
      if (modoColor == 1) {
          if ((col + fila) % 2 == 0) {
            fill(#F5A6E6); 
          } else {  
            fill(#B960B8); 
          }
        } else if (modoColor == 2) {
          fill(random(255), random(255), random(255));
        }
  
        rect(x, y, tamaño, tamaño);
  
        if (modoColor == 1) {
          if ((col + fila) % 2 == 0) {
            fill(255);
          } else {
            fill(200, 0, 0);
        }
      } else if (modoColor == 2) {
        fill(random(255), random(255), random(255));
      }

      ellipse(x, y, 12, 14);
    }
  }
}

void keyPressed() {
  if (key == 't' || key == 'T') {
    modoColor = 1;
  } else if (key == 'p' || key == 'P') {
    modoColor = 2;
  }
}
