PVector centro, flechaDerecha, flechaIzquierda;
color colorFlechaIzquierda = color(0, 0, 255); // Azul
color colorFlechaDerecha = color(255, 0, 0); // Rojo

void setup(){
  size(800, 600);
  strokeWeight(2);
  
  centro = new PVector(width / 2, height / 2);
  flechaIzquierda = new PVector(random(0, width / 2), random(height));// Genera una posición aleatoria para la flecha izquierda.
  flechaDerecha = new PVector(width, height / 2);
}

void draw(){
  background(0);
  
  // Dibujar la flecha derecha de color rojo
  stroke(colorFlechaDerecha);
  drawArrow(centro.x, centro.y, flechaDerecha.x, flechaDerecha.y);
  
  // Dibuja la flecha izquierda de color azul
  stroke(colorFlechaIzquierda);
  drawArrow(flechaIzquierda.x, flechaIzquierda.y, centro.x, centro.y);
  
  // Dibuja un punto central
  stroke(colorFlechaDerecha);
  ellipse(centro.x, centro.y, 10, 10);
}

void drawArrow(float x1, float y1, float x2, float y2) {
  line(x1, y1, x2, y2);
}
