   //https://www.youtube.com/watch?v=BzjNAJpLG_0
       
PImage Rosayvioleta;
boolean modoInteractivo = false;
int  modoColor= 1;
float tamaño = 40;
   float x = width / 2;
  float y = height / 2;
  float s = 2;

void setup() {
  size(800, 400);
  Rosayvioleta = loadImage("Rosayvioleta.jpg"); 
  Rosayvioleta.resize(400,400);
  noStroke(); 
  fill(colorAleatorio());
 
  }
  color colorAleatorio() {
  return color(random(255), random(255), random(255));
}
float calcularTamaño(float x, float y) {
  float distancia = dist(mouseX, mouseY, x, y);
  return map(distancia, 0, width, 12,50);  
}
void draw() {
  background(255);
  
  image(Rosayvioleta,0,0);
  translate(400, 0);
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
          fill(colorAleatorio());
        }
        
  float nuevoTamaño = calcularTamaño(x, y);
rect(x, y, nuevoTamaño, nuevoTamaño);
float tamañoCorazon = nuevoTamaño * 0.2;  

  if (modoColor == 1) {
          if ((col + fila) % 2 == 0) {
            fill(255);
          } else {
            fill(200, 0, 0);
        }
      } else if (modoColor == 2) {
        fill(colorAleatorio());
      }   
      ellipse(x - tamañoCorazon/2, y - tamañoCorazon/2, tamañoCorazon, tamañoCorazon);
ellipse(x + tamañoCorazon/2, y - tamañoCorazon/2, tamañoCorazon, tamañoCorazon);
triangle(x - tamañoCorazon, y - tamañoCorazon/4,
         x + tamañoCorazon, y - tamañoCorazon/4,
         x, y + tamañoCorazon);  
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
