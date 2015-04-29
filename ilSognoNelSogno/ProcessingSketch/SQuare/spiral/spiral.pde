ArrayList circles;
int numRings = 4;
 
boolean bAnimate = false;
 
int increment = 0;
 
void setup(){
  size(400,400);
  smooth();
   
  circles = new ArrayList();
   
  // create n rings of squares
  for(int i=0; i<numRings; i++){
    Circle c = new Circle(55 + 40*i, 18 + 14*i);    // replicates radius and square num of original
    c.setPosition(width/2,height/2);
    circles.add( c );
  }
}
 
void draw(){
  background(125);
     
  if(bAnimate)            // in case you want to see the circles rotate, it adds another layer
    rotateCircles();
   
  for(int i=0; i<circles.size(); i++){
    Circle c = (Circle) circles.get(i);
    int direction = i%2==0 ? -1 : 1;
    c.rotateSquares(direction*PI*mouseX/width);
    c.display();
  }
}
 





