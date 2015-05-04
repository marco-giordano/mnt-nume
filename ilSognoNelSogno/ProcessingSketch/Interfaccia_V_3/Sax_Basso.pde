void Sax_Basso(){

   strokeWeight(0);
// La posizione del fiducial decide il colore di quadrati

 coloreLinea = (coloreQuadratiX * coloreQuadratiY)*153; 
  
  // cicli for che premettono di disegnare i quadrati
for(y1=0; y1<height; y1=y1+dimQ3*2){
  for(y2=dimQ3; y2<height; y2=y2+dimQ3*2){
    for(x1=dimQ3/2; x1<width; x1=x1+dimQ3*2){
      for(x2=dimQ3; x2<width; x2=x2+(dimQ3*2)){
   strokeWeight(0); // dimensione bordo quadrati
   fill(coloreQuadratiX*255);
  rect(x1, y1, dimQ3, dimQ3); // fila di quadrati
     fill(coloreQuadratiY*255);
  rect(x2, y2, dimQ3, dimQ3); // fila di quadrati
      }}
         strokeWeight(0);
  stroke(153); // colore linee orizontali e verticali
  line (0, y1, width, y1); // linea orizzontale tra una fila di quadrati e l'altra
  line (0, y2, width, y2); // linea orizzontale tra una fila di quadrati e l'altra 
  }
 }
}
