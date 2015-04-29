void rotateCircles(){
   
  increment++;
   
  for(int i=0; i<circles.size(); i++){
    Circle c = (Circle) circles.get(i);
    int direction = i%2==0 ? -1 : 1;
    c.setRotation(direction*PI*increment/1000.f);

  }
}
 
void keyPressed(){
  if( key == ' ' ){
    bAnimate = !bAnimate;

  }
}
