void colore_fiducial(){

//--- INIZIO PULSAZIONI ---  
// pulsazione 1
contatore = contatore+1; // CONTEGGIO CONTATORE
if(contatore<=15) pulse = map(contatore, 0, 15, 0., 1.);  // FADE-IN
else if(contatore>15 && contatore<=30) pulse = map(contatore, 15, 30, 1., 0.);// FADE-OUT
else if(contatore>=31) contatore = 0;
//pulsazione 2
contatore2 = contatore2+1; // CONTEGGIO CONTATORE 2
if(contatore2<=30) pulse2 = map(contatore2, 0, 30, 0., 1.);  // FADE-IN
else if(contatore2>30 && contatore2<=60) pulse2 = map(contatore2, 30, 60, 1., 0.);// FADE-OUT
else if(contatore2>=61) contatore2 = 0;
/// pulsazione 3
contatore3 = contatore3+1; // CONTEGGIO CONTATORE 3
if(contatore3<=45) pulse3 = map(contatore3, 0, 45, 0., 1.); // FADE-IN
else if(contatore3>45 && contatore3<=90) pulse3 = map(contatore3, 45, 90, 1., 0.); // FADE-OUT
else if(contatore3>=91) contatore3 = 0;
//--- FINE PULSAZIONI ---  

// FIDUCIAL SPAZIALIZZATORE ELABORATORI
  if( ID == 0){ // controllo dell'ID del fiducial 
           coloreFiducialR = 0; // compendente rossa del colore del fiducial
           coloreFiducialG = 255; // compendente verde del colore del fiducial
           coloreFiducialB = 255; // compendente blu del colore del fiducial
           } 
  
 // FIDUCIAL PIANOFORTE
 else if(ID == 1){ // controllo dell'ID del fiducial
           coloreFiducialR =  int(200*pulse3); // compendente rossa del colore del fiducial
           coloreFiducialG = 0; // compendente verde del colore del fiducial
           coloreFiducialB = 0; // compendente blu del colore del fiducial
           }
 // FIDUCIAL VIOLONCELLO
 else if( ID == 2){ // controllo dell'ID del fiducial
           coloreFiducialR = 0; // compendente rossa del colore del fiducial
           coloreFiducialG =  int(200*pulse2); // compendente verde del colore del fiducial
           coloreFiducialB = 0; // compendente blu del colore del fiducial
           }
// FIDUCIAL SAX BASSO
 else if(ID == 3){ // controllo dell'ID del fiducial
           coloreFiducialR = 0; // compendente rossa del colore del fiducial
           coloreFiducialG = 0; // compendente verde del colore del fiducial
           coloreFiducialB =  int(200*pulse); // compendente blu del colore del fiducial
           }
// FIDUCIAL ELABORATORE VIOLONCELLO
 else if( ID == 4){ // controllo dell'ID del fiducial
           coloreFiducialR = 0; // compendente rossa del colore del fiducial
           coloreFiducialG =  int(255*pulse2); // compendente verde del colore del fiducial
           coloreFiducialB = 0; // compendente blu del colore del fiducial
           }
// FIDUCIAL ELABORATORE SAX BASSO
  else if(ID == 5){ // controllo dell'ID del fiducial
           coloreFiducialR = 0; // compendente rossa del colore del fiducial
           coloreFiducialG = 0; // compendente verde del colore del fiducial
           coloreFiducialB =  int(255*pulse); // compendente blu del colore del fiducial
           }
// FIDUCIAL CADUTA PIANOFORTE
 else if( ID == 6){ // controllo dell'ID del fiducial
           coloreFiducialR =  int(50*pulse3); // compendente rossa del colore del fiducial
           coloreFiducialG =  int(50*pulse3); // compendente verde del colore del fiducial
           coloreFiducialB =  int(50*pulse3); // compendente blu del colore del fiducial
           }
// FIDUCIAL CADUTA   VIOLONCELLO  
 else if( ID == 7){ // controllo dell'ID del fiducial
           coloreFiducialR =  int(50*pulse2); // compendente rossa del colore del fiducial
           coloreFiducialG =  int(50*pulse2); // compendente verde del colore del fiducial
           coloreFiducialB =  int(50*pulse2); // compendente blu del colore del fiducial
           }
// FIDUCIAL SOFFIO
 else if( ID == 8){ // controllo dell'ID del fiducial
           coloreFiducialR =  int(50*pulse3); // compendente rossa del colore del fiducial
           coloreFiducialG =  int(50*pulse3); // compendente verde del colore del fiducial
           coloreFiducialB =  int(50*pulse3); // compendente blu del colore del fiducial
           }
           
// FIDUCIAL NAVE
 else if( ID == 9){ // controllo dell'ID del fiducial
           coloreFiducialR =  int(50*pulse3); // compendente rossa del colore del fiducial
           coloreFiducialG =  int(50*pulse3); // compendente verde del colore del fiducial
           coloreFiducialB =  int(50*pulse3); // compendente blu del colore del fiducial
           }
}
