void Pianoforte(){

// generatore linee
    stroke (153);
    strokeWeight(dimSf);
    for(i = dimQ2; i<height; i=i+dimQ2) line (0, i, width, i); // linee orizontali
    for(i = dimQ2; i<width; i=i+dimQ2) line (i, 0, i, height); // linee verticali

// generatore sfere
    for(int ix = dimQ2; ix<width; ix=ix+dimQ2){  // ciclo for per le sfere sull'asse X
    for(int iy = dimQ2; iy<height; iy=iy+dimQ2) { // ciclo for per le sfere sull'asse Y
      strokeWeight(10); // dimensione sfera
      fill(255); // colore sfere
      stroke(255); // colore bordo sfere
       ellipse (ix, iy, dimSf, dimSf); // disegno ellisse
     }}
         strokeWeight(2);  
 
}
