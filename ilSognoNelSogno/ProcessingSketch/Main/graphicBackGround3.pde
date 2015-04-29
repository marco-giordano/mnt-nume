int sizeSquare = 100; // square size
float linesColor; // lines color
float squareColorX, squareColorY; // square color
int x,y; // "for" value

void graphicBackGround3(){
   strokeWeight(0);
  
  // first group of squares 
for(y=0; y<height; y=y+sizeSquare*2){
  for(x=sizeSquare/2; x<width; x=x+sizeSquare*2){
    strokeWeight(0); // edge size of square
    fill(squareColorX*153); // square color
    rect(x, y, sizeSquare, sizeSquare); // square
    strokeWeight(0);
    stroke(153); // lines color
    line (0, y, width, y); // color of line between the squares
         }}
         
  // first group of squares 
  for(y=sizeSquare; y<height; y=y+sizeSquare*2){   
    for(x=sizeSquare; x<width; x=x+sizeSquare*2){ 
    strokeWeight(0); // edge size of square
    fill(squareColorY*153); // square color
    rect(x, y, sizeSquare, sizeSquare); // square
    strokeWeight(0); // 
    stroke(153); // color of line between the squares
    line (0, y, width, y); // linea orizzontale tra una fila di quadrati e l'altra 
  }}
}

