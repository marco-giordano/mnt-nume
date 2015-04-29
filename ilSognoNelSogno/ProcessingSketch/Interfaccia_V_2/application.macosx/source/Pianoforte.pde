void Pianoforte(){


// generatore linee
    stroke (153);
    strokeWeight(dimSf);
    for(i = dimQ2; i<height; i=i+dimQ2) line (0, i, width, i);
    for(i = dimQ2; i<width; i=i+dimQ2) line (i, 0, i, height);

// generatore sfere
    for(int ix = dimQ2; ix<width; ix=ix+dimQ2){
    for(int iy = dimQ2; iy<width; iy=iy+dimQ2) {
      strokeWeight(10);    
      fill(255);
      stroke(255);
       ellipse (ix, iy, dimSf, dimSf);
     }}
         strokeWeight(2);    
}
