int fiducialColorR, fiducialColorG, fiducialColorB = 0;

void fiducialColor (int ID, float rotation){ // Dati in ingresso alla funzione
     
      if(rotation<PI) rotation=map(rotation, 0., PI, 0., 1.);  // Valore riscalato per controllare l'intensita del colore del fiducial
      else rotation=map(rotation, PI, 2*PI, 1., 0.);  // Valore riscalato per controllare l'intensita del colore del fiducial

  if( ID == 0){ // Test sul numero dell'ID del fiducial
           fiducialColorR = 0; // Componente rossa del colore del fiducial
           fiducialColorG = int(255*rotation); // Componente verde del colore del fiducial
           fiducialColorB = int(255*rotation); // Componente blu del colore del fiducial
           } 
 else if(ID == 1){ // Test sul numero dell'ID del fiducial
           fiducialColorR =  int(200*rotation); // Componente rossa del colore del fiducial
           fiducialColorG = 0; // Componente verde del colore del fiducial
           fiducialColorB = 0; // Componente blu del colore del fiducial
           }
 else if( ID == 2){ // Test sul numero dell'ID del fiducial
           fiducialColorR = 0; // Componente rossa del colore del fiducial
           fiducialColorG =  int(200*rotation); // Componente verde del colore del fiducial
           fiducialColorB = 0; // Componente blu del colore del fiducial
           }
 else if(ID == 3){ // Test sul numero dell'ID del fiducial
           fiducialColorR = 0; // Componente rossa del colore del fiducial
           fiducialColorG = 0; // Componente verde del colore del fiducial
           fiducialColorB =  int(200*rotation); // Componente blu del colore del fiducial
           }
 else if( ID == 4){ // Test sul numero dell'ID del fiducial
           fiducialColorR = 0; // Componente rossa del colore del fiducial
           fiducialColorG =  int(255); // Componente verde del colore del fiducial
           fiducialColorB = 0; // Componente blu del colore del fiducial
           }
  else if(ID == 5){ // Test sul numero dell'ID del fiducial
           fiducialColorR = 0; // Componente rossa del colore del fiducial
           fiducialColorG = 0; // Componente verde del colore del fiducial
           fiducialColorB =  int(255); // Componente blu del colore del fiducial
           }
 else if( ID > 6 && ID <10){ // Test sul numero dell'ID del fiducial
           fiducialColorR =  int(50*rotation); // Componente rossa del colore del fiducial
           fiducialColorG =  int(50*rotation); // Componente verde del colore del fiducial
           fiducialColorB =  int(50*rotation); // Componente blu del colore del fiducial
           }
}
