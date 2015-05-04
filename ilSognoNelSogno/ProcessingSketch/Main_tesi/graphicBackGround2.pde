float linesColorX, linesColorY; // Colore delle linee sull'asse X ed Y
int linesStep = 2; // Passo tra le linee
int i,j,jj, k; // Variabili cili for

void graphicBackGround2(){
     
  strokeWeight(2);  // Dimensione linee

// Generazione delle linee orizontali
     stroke(linesColorX*153); // Colore delle linee in base alla posizione del fiducial sull'asse delle X
       for( i = 0; i<=width; i = i+(100*linesStep)){ // Generazione coordinate asse X delle linee
          for( j = 0; j<=width; j = j+(100*linesStep)){ // Generazione coordinate asse Y delle linee
             line(i+(35*linesStep), j, i+(65*linesStep), j); // Generazione linee
                  }} 
        for( i = 0; i<=width; i = i+(100*linesStep)){ // Generazione coordinate asse X delle linee
            for( j = 75*linesStep; j<=width; j = j+(100*linesStep)){ // Generazione coordinate asse Y delle linee
                line(i+(60*linesStep), j, i+(90*linesStep), j); // Generazione linee
                     }} 
        for( i = 0; i<=width; i = i+(100*linesStep)){ // Generazione coordinate asse X delle linee
           for( j = 25*linesStep; j<=width; j = j+(100*linesStep)){ // Generazione coordinate asse Y delle linee
              line(i+(10*linesStep), j, i+(40*linesStep), j); // Generazione linee
                  }}
       for( i = 0; i<=width; i = i+(100*linesStep)){ // Generazione coordinate asse X delle linee
          for( j = 50*linesStep; j<=width; j = j+(100*linesStep)){ // Generazione coordinate asse Y delle linee
              line(i+(85*linesStep), j, i+(115*linesStep), j); // Generazione linee
                   }}
                 
// Generazione delle linee verticali
   stroke(linesColorY*153); // Colore delle linee in base alla posizione del fiducial sull'asse delle Y
    for( i = 0; i<=width; i = i+(100*linesStep)){ // Generazione coordinate asse Y delle linee
          for( j = 125*linesStep; j<=width; j = j+(100*linesStep)){ // Generazione coordinate asse X delle linee
              line(j, i+(60*linesStep), j, i+(90*linesStep)); // Generazione linee
                }}  
   for( i = 0; i<=width; i = i+(100*linesStep)){ // Generazione coordinate asse Y delle linee
       for( j = 75*linesStep; j<=width; j = j+(100*linesStep)){ // Generazione coordinate asse X delle linee
           line(j, i+(10*linesStep), j, i+(40*linesStep)); // Generazione linee
                }} 
   for( i = 0; i<=width; i = i+(100*linesStep)){ // Generazione coordinate asse Y delle linee
       for( j = 50*linesStep; j<=width; j = j+(100*linesStep)){ // Generazione coordinate asse X delle linee
          line(j, i+(35*linesStep), j, i+(65*linesStep)); // Generazione linee
               }}
    for( i = 0; i<=width; i = i+(100*linesStep)){ // Generazione coordinate asse Y delle linee
        for( j = 100*linesStep; j<=width; j = j+(100*linesStep)){ // Generazione coordinate asse X delle linee
           line(j, i+(85*linesStep), j, i+(115*linesStep)); // Generazione linee
                }}
                
// Generazione delle linee diagonali
        stroke (153); // Colore linee diagonali
    for( i = (50*linesStep); i<=width+(50*linesStep); i = i+(50*linesStep)) line(i, 0, 0, i);  // Generazione linee diagonali
    for( i = (50*linesStep); i<=height+(50*linesStep); i = i+(50*linesStep))  line(i, width, width, i); // Generazione linee diagonali
}
