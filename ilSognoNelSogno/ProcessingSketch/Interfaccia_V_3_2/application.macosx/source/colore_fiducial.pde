int fiducialColorR, fiducialColorG, fiducialColorB = 0;

void fiducialColor (int ID, float angle){
     
      if(angle<3.1415937) angle=map(angle, 0., 3.1415937, 0., 1.);  // rescaled value for intensity color of the fiducial
      else angle=map(angle, 3.1415937, 6.283165, 1., 0.);  // rescaled value for intensity color of the fiducial


// FIDUCIAL SPAZIALIZZATORE ELABORATORI
  if( ID == 0){ // ID test
           fiducialColorR = 0; // Red component of the fiducial color's
           fiducialColorG = int(255*angle); // Green component of the fiducial color's
           fiducialColorB = int(255*angle); // Blue component of the fiducial color's
           } 
  
 // FIDUCIAL PIANOFORTE
 else if(ID == 1){ // controllo dell'ID del fIDucial
           fiducialColorR =  int(200*angle); // Red component of the fiducial color's
           fiducialColorG = 0; // Green component of the fiducial color's
           fiducialColorB = 0; // Blue component of the fiducial color's
           }
 // FIDUCIAL VIOLONCELLO
 else if( ID == 2){ // controllo dell'ID del fIDucial
           fiducialColorR = 0; // Red component of the fiducial color's
           fiducialColorG =  int(200*angle); // Green component of the fiducial color's
           fiducialColorB = 0; // Blue component of the fiducial color's
           }
// FIDUCIAL SAX BASSO
 else if(ID == 3){ // controllo dell'ID del fIDucial
           fiducialColorR = 0; // Red component of the fiducial color's
           fiducialColorG = 0; // Green component of the fiducial color's
           fiducialColorB =  int(200*angle); // Blue component of the fiducial color's
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
// FIDUCIAL CADUTA PIANOFORTE
 else if( ID == 6){ // controllo dell'ID del fiducial
           fiducialColorR =  int(50*angle); // Red component of the fiducial color's
           fiducialColorG =  int(50*angle); // Green component of the fiducial color's
           fiducialColorB =  int(50*angle); // Blue component of the fiducial color's
           }
// FIDUCIAL CADUTA VIOLONCELLO  
 else if( ID == 7){ // controllo dell'ID del fiducial
           fiducialColorR =  int(50*angle); // Red component of the fiducial color's
           fiducialColorG =  int(50*angle); // Green component of the fiducial color's
           fiducialColorB =  int(50*angle); // Blue component of the fiducial color's
           }
// FIDUCIAL SOFFIO
 else if( ID == 8){ // controllo dell'ID del fiducial
           fiducialColorR =  int(50*angle); // Red component of the fiducial color's
           fiducialColorG =  int(50*angle); // Green component of the fiducial color's
           fiducialColorB =  int(50*angle); // Blue component of the fiducial color's
           }
           
// FIDUCIAL NAVE
 else if( ID == 9){ // controllo dell'ID del fiducial
           fiducialColorR =  int(50*angle); // Red component of the fiducial color's
           fiducialColorG =  int(50*angle); // Green component of the fiducial color's
           fiducialColorB =  int(50*angle); // Blue component of the fiducial color's
           }
}
