class Square{
  
  float side;
  vec2D position;
  float rotation;
  color colour;
   
 Square(){
   side = 10.f;
   position = new vec2D();
   colour = color(255,255,255);
   rotation = 0.f;
 }
 
 Square(float s){
   side = s;
   position = new vec2D();
   colour = color(255,255,255);
   rotation = 0.f;
 }
  
 void setPosition(float _x, float _y){
   position.x = _x;
   position.y = _y;
 }
  
 void setColor(int v){
   colour = color(v,v,v);  // kind of looks like a nest of baby owls :)
 }
  
 void setColor(int r, int g, int b){
   colour = color(r,g,b);
 }
  
 void setRotation(float a){
   rotation = a;
 }
  
 void update(){
 }
  
 void display(){
   pushMatrix();
     stroke(colour);
     strokeWeight(2);
     noFill();
     translate(position.x, position.y);
     rotate(rotation);
     rect(-side/2.f, -side/2.f, side, side);
   popMatrix();
 }
   
}
 
//-------------------------------------------------------------------------------------
