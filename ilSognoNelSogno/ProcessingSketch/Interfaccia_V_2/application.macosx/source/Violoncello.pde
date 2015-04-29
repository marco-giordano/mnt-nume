void Violoncello(){

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

  
 // controllo dell'ID del fiducial
     stroke(coloreLineax2*255); // colore linee orizontali che varia con la posizione
                                                                 // sull'asse delle Y del fiducial   
        for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 0; j<=width; j = j+(100*passoLinee)){
      line(i+(35*passoLinee), j, i+(65*passoLinee), j);   //liee orizontali  
          }} 
              for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 75*passoLinee; j<=width; j = j+(100*passoLinee)){
      line(i+(60*passoLinee), j, i+(90*passoLinee), j);   //liee orizontali  
          }} 
    for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 25*passoLinee; j<=width; j = j+(100*passoLinee)){
      line(i+(10*passoLinee), j, i+(40*passoLinee), j);     //liee orizontali  
          }}
    for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 50*passoLinee; j<=width; j = j+(100*passoLinee)){
      line(i+(85*passoLinee), j, i+(115*passoLinee), j);   //liee orizontali  
          }}
  
   stroke(coloreLineay2*255);  // colore linee verticali che viariano con la posizione
                                                                 // sull'asse delle X del fiducial   
    for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 125*passoLinee; j<=width; j = j+(100*passoLinee)){
      line(j, i+(60*passoLinee), j, i+(90*passoLinee));     //liee veritcali  
          }}  
              for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 75*passoLinee; j<=width; j = j+(100*passoLinee)){
      line(j, i+(10*passoLinee), j, i+(40*passoLinee));   //liee veritcali  
          }} 
    for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 50*passoLinee; j<=width; j = j+(100*passoLinee)){
     line(j, i+(35*passoLinee), j, i+(65*passoLinee));   //liee veritcali  
          }}

    for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 100*passoLinee; j<=width; j = j+(100*passoLinee)){
      line(j, i+(85*passoLinee), j, i+(115*passoLinee));     //liee veritcali  
          }}
          
        stroke (255); // colore linee diagonali
    for( i = (50*passoLinee); i<=width+(50*passoLinee); i = i+(50*passoLinee)) line(i, 0, 0, i);    // linee diagonali
    for( i = (50*passoLinee); i<=height+(50*passoLinee); i = i+(50*passoLinee))  line(i, width, width, i);   // linee diagonali

}

