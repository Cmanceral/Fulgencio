/* Variables. Fulgencio 
 */
float x;
float y;

float cuerpoAncho;
float cuerpoLargo;

float ojosPosicionX;
float ojosPosicionY;
float ojosSizeX;
float ojosSizeY;

float piernasX;
float piernasY;
float piernasPunto1;
float piernasPunto2;


void setup(){

  size(400, 400);
  
  cuerpoAncho = width * 0.1; //40
  cuerpoLargo = width * 0.25; // 100
}

void draw() {
  
  x= width/2;
  y= height * .425;

  
  background(255);
  
  // Cuerpo
  rectMode(CENTER);
  fill(0);
  rect(x, y, cuerpoAncho, cuerpoLargo);
  
  // Cabeza
  fill(200);
  ellipse(x, y-70, cuerpoLargo, cuerpoLargo);
  
  // Ojos
  ojosPosicionX = x - (width * 0.1);
  ojosPosicionY = y - (width * 0.175);
  ojosSizeX = width * 0.125;
  ojosSizeY = width * 0.0625;
  
  fill(255);
  rect(ojosPosicionX, ojosPosicionY, ojosSizeX, ojosSizeY);
  rect(ojosPosicionX + (width*0.2), ojosPosicionY, ojosSizeX, ojosSizeY);
  
  // Piernas
  
  piernasX = x - (width * 0.05);
  piernasY = x + (width * 0.05);
  piernasPunto1 = x - (width * 0.125);
  piernasPunto2 = x + (width * 0.125);
  println(piernasY);
  
  line(piernasX, piernasY, piernasPunto1, piernasPunto2);
  line(piernasY, piernasY, piernasPunto2, piernasPunto2);

}
