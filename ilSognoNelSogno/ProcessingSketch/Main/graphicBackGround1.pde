int sizeEll = 30; // ellipse size
int sizeSquare2 = 125; // square size

void graphicBackGround1(){

// draw lines
    stroke (153);
    strokeWeight(sizeEll);
    for(i = sizeSquare2; i<height; i=i+sizeSquare2) line (0, i, width, i); // horizontal lines
    for(i = sizeSquare2; i<width; i=i+sizeSquare2) line (i, 0, i, height); // vertical lines

// draw ellipse
    strokeWeight(10); // sphere size
    fill(255); // ellipse color
    stroke(255); // edge color
    for(int ix = sizeSquare2; ix<width; ix=ix+sizeSquare2){  // ellipse on the X axses
    for(int iy = sizeSquare2; iy<height; iy=iy+sizeSquare2) { // ellipse on the Y axses
       ellipse (ix, iy, sizeEll, sizeEll); // ellipse
     }}
         strokeWeight(2);  
 
}
