int fiducialColorR, fiducialColorG, fiducialColorB = 0;

void fiducialColor (int ID, float rotation){
     
      if(rotation<PI) rotation=map(rotation, 0., PI, 0., 1.);  // rescaled value for intensity color of the fiducial
      else rotation=map(rotation, PI, 2*PI, 1., 0.);  // rescaled value for intensity color of the fiducial

// FIDUCIAL SPAZIALIZZATORE ELABORATORI
  if( ID == 0){ // ID test
           fiducialColorR = 0; // Red component of the fiducial color's
           fiducialColorG = int(255*rotation); // Green component of the fiducial color's
           fiducialColorB = int(255*rotation); // Blue component of the fiducial color's
           } 
  
 // FIDUCIAL PIANOFORTE
 else if(ID == 1){ // controllo dell'ID del fIDucial
           fiducialColorR =  int(200*rotation); // Red component of the fiducial color's
           fiducialColorG = 0; // Green component of the fiducial color's
           fiducialColorB = 0; // Blue component of the fiducial color's
           }
 // FIDUCIAL VIOLONCELLO
 else if( ID == 2){ // controllo dell'ID del fIDucial
           fiducialColorR = 0; // Red component of the fiducial color's
           fiducialColorG =  int(200*rotation); // Green component of the fiducial color's
           fiducialColorB = 0; // Blue component of the fiducial color's
           }
// FIDUCIAL SAX BASSO
 else if(ID == 3){ // controllo dell'ID del fIDucial
           fiducialColorR = 0; // Red component of the fiducial color's
           fiducialColorG = 0; // Green component of the fiducial color's
           fiducialColorB =  int(200*rotation); // Blue component of the fiducial color's
           }
// FIDUCIAL ELABORATORE VIOLONCELLO
 else if( ID == 4){ // controllo dell'ID del fIDucial
           fiducialColorR = 0; // Red component of the fiducial color's
           fiducialColorG =  int(255); // Green component of the fiducial color's
           fiducialColorB = 0; // Blue component of the fiducial color's
           }
// FIDUCIAL ELABORATORE SAX BASSO
  else if(ID == 5){ // controllo dell'ID del fiducial
           fiducialColorR = 0; // Red component of the fiducial color's
           fiducialColorG = 0; // Green component of the fiducial color's
           fiducialColorB =  int(255); // Blue component of the fiducial color's
           }
// FIDUCIAL CADUTE
 else if( ID > 6 && ID <10){ // controllo dell'ID del fiducial
           fiducialColorR =  int(50*rotation); // Red component of the fiducial color's
           fiducialColorG =  int(50*rotation); // Green component of the fiducial color's
           fiducialColorB =  int(50*rotation); // Blue component of the fiducial color's
           }
}
