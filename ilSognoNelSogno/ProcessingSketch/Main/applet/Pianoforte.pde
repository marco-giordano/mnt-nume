int sizeEll = 30; // ellipse size
int sizeSquare2 = 125; // square size

void Pianoforte(){

// draw lines
    stroke (153);
    strokeWeight(sizeEll);
    for(i = sizeSquare2; i<height; i=i+sizeSquare2) line (0, i, width, i); // horizontal lines
    for(i = sizeSquare2; i<width; i=i+sizeSquare2) line (i, 0, i, height); // vertical lines

// draw ellipse
    for(int ix = sizeSquare2; ix<width; ix=ix+sizeSquare2){  // ellipse on the X axses
    for(int iy = sizeSquare2; iy<height; iy=iy+sizeSquare2) { // ellipse on the Y axses
      strokeWeight(10); // sphere size
      fill(255); // ellipse color
      stroke(255); // edge color
       ellipse (ix, iy, sizeEll, sizeEll); // ellipse
     }}
         strokeWeight(2);  
 
}
