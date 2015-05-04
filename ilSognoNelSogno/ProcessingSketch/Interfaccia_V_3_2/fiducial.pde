float object_size = 118; // fiducial size
float table_size = 760; // table size
float scale_factor = 1; // scale factor
PFont font; // fiducial text font

void fiducial(int ID, float X, float Y, float angle, int R, int G,int B){

     textFont(font,18*scale_factor);  // text font size
     float obj_size = object_size*scale_factor;  // fiducial size
     pushMatrix(); // save old fiducial conrdinate
     translate(X,Y); // fiducial translation
     rotate(angle); // fiducial rotation
     stroke(R, G, B); // fiducial edge color
     fill(R, G, B); // fiducial color
     ellipse(0,0,obj_size,obj_size); // ellipse (fiducial)
     strokeWeight(3); // text and pinter edge size
     stroke(255*angle); // text and pinter edge color
     fill(255*angle); // text and pinter color
     line(0, -obj_size/2, 0, 0); // pinter
     popMatrix(); // new fiducial coordinate
     fill(255); // ID color
     text(""+ID, X+50, Y); // write ID
     println("ID:"+ID+"  X:"+X+"  Y:"+Y+"  Angle:"+angle); // print fiducial value
  
}
