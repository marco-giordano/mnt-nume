int sizeEll = 30; // Dimensioni ellissi
int sizeSquare2 = 125; // Dimensioni quadrati
void graphicBackGround1(){

// Processo di disegno delle linee
    stroke (153); // Colore linee
    strokeWeight(sizeEll); // Dimensione linee
    for(i = sizeSquare2; i<height; i=i+sizeSquare2) line (0, i, width, i); // Generazione linee orizontali
    for(i = sizeSquare2; i<width; i=i+sizeSquare2) line (i, 0, i, height); // Generazione linee verticali

// Processo di disegno degli ellissi
    strokeWeight(10); // Dimesione ellissi
    fill(255); // Colore ellissi (bianco)
    stroke(255); // Colore margine ellissi (bianco)
    for(int ix = sizeSquare2; ix<width; ix=ix+sizeSquare2){  // Generazione coordinate ellissi sull'asse X
    for(int iy = sizeSquare2; iy<height; iy=iy+sizeSquare2) { // Generazione coordinte ellissi sull'asse Y
       ellipse (ix, iy, sizeEll, sizeEll); // Generazione ellissi
     }}
}



