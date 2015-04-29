void fiducial(){
       textFont(font,18*scale_factor);
     float obj_size = object_size*scale_factor; 
     float cur_size = cursor_size*scale_factor; 
     pushMatrix();
     translate(X,Y); 
     rotate(ang);
     stroke(1);
     fill(coloreFiducialR, coloreFiducialG, coloreFiducialB); // colore del fiducial con le 3 componenti decise appena sopra
     ellipse(0,0,obj_size,obj_size);
     strokeWeight(0);
     stroke(255);
     fill(255);
     line(0, -obj_size/2, 0, 0);
     popMatrix();
     fill(255);
     text(""+ID, X, Y);
}
 
