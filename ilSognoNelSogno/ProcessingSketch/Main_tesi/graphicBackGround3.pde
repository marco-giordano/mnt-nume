int sizeSquare = 100; // Dimensione quadrati
float linesColor; // Colore linee
float squareColorX, squareColorY; // CColore quadrati
int x,y; // Cicli for

void graphicBackGround3(){
   strokeWeight(0); // Dimensione linee
  
  // Generazione primo gruppo di quadrati
for(y=0; y<height; y=y+sizeSquare*2){ // Generazione coordinate asse Y dei quadrati
  for(x=sizeSquare/2; x<width; x=x+sizeSquare*2){ // Generazione coordinate asse X dei quadrati
    strokeWeight(0); // Dimensione margini qudrati
    fill(squareColorX*153); // Colore quadrati
    rect(x, y, sizeSquare, sizeSquare); // Coordinate quadrati
    strokeWeight(0); // Dimensione linee tra i quadrato
    stroke(153); // Colore linee orizontali tra i quadtati
    line (0, y, width, y); // Generazione linee tra i quadrati
         }}
         
  // first group of squares 
  for(y=sizeSquare; y<height; y=y+sizeSquare*2){ // Generazione coordinate asse Y dei quadrati
    for(x=sizeSquare; x<width; x=x+sizeSquare*2){ // Generazione coordinate asse X dei quadrati
    strokeWeight(0); //Dimensione margini qudrati
    fill(squareColorY*153); // Colore quadrati
    rect(x, y, sizeSquare, sizeSquare); // square
    strokeWeight(0); // Dimensione linee tra i quadrato
    stroke(153); // Colore linee orizontali tra i quadtati
    line (0, y, width, y); // Generazione linee tra i quadrati
  }}
}




