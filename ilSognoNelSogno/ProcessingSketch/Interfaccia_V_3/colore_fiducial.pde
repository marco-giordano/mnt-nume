void colore_fiducial(){


  if( ID < 1){ // controllo dell'ID del fiducial
           coloreFiducialR = 100; // compendente rossa del colore del fiducial
           coloreFiducialG = 100; // compendente verde del colore del fiducial
           coloreFiducialB = 100; // compendente blu del colore del fiducial
           } 
  
 
 else if(ID == 1){ // controllo dell'ID del fiducial
           coloreFiducialR = 200; // compendente rossa del colore del fiducial
           coloreFiducialG = 0; // compendente verde del colore del fiducial
           coloreFiducialB = 0; // compendente blu del colore del fiducial
           }
 
 else if( ID == 2){ // controllo dell'ID del fiducial
           coloreFiducialR = 0; // compendente rossa del colore del fiducial
           coloreFiducialG = 200; // compendente verde del colore del fiducial
           coloreFiducialB = 0; // compendente blu del colore del fiducial
           }
           
 else if(ID == 3){ // controllo dell'ID del fiducial
           coloreFiducialR = 0; // compendente rossa del colore del fiducial
           coloreFiducialG = 0; // compendente verde del colore del fiducial
           coloreFiducialB = 200; // compendente blu del colore del fiducial
           }
 
 else if( ID == 4){ // controllo dell'ID del fiducial
           coloreFiducialR = 0; // compendente rossa del colore del fiducial
           coloreFiducialG = 255; // compendente verde del colore del fiducial
           coloreFiducialB = 0; // compendente blu del colore del fiducial
           }
           
  else if(ID == 5){ // controllo dell'ID del fiducial
           coloreFiducialR = 0; // compendente rossa del colore del fiducial
           coloreFiducialG = 0; // compendente verde del colore del fiducial
           coloreFiducialB = 255; // compendente blu del colore del fiducial
           }
 
 else if( ID > 5){ // controllo dell'ID del fiducial
           coloreFiducialR = 50; // compendente rossa del colore del fiducial
           coloreFiducialG = 50; // compendente verde del colore del fiducial
           coloreFiducialB = 50; // compendente blu del colore del fiducial
           }
}
