float linesColorX, linesColorY; // variabili per determinare il colore delle linee sull'asse X ed Y
int linesStep = 2; // cosante per stabilire il passo tra le linee
int i,j,jj, k; // variabili per cicli for

void graphicBackGround2(){

 // controllo dell'ID del fiducial
     stroke(linesColorX*153); // colore linee orizontali che varia con la posizione
                                                                 // sull'asse delle Y del fiducial   
       for( i = 0; i<=width; i = i+(100*linesStep)){
          for( j = 0; j<=width; j = j+(100*linesStep)){
             line(i+(35*linesStep), j, i+(65*linesStep), j);   //liee orizontali  
                  }} 
       
        for( i = 0; i<=width; i = i+(100*linesStep)){
            for( j = 75*linesStep; j<=width; j = j+(100*linesStep)){
                line(i+(60*linesStep), j, i+(90*linesStep), j);   //liee orizontali  
                     }} 
   
        for( i = 0; i<=width; i = i+(100*linesStep)){
           for( j = 25*linesStep; j<=width; j = j+(100*linesStep)){
              line(i+(10*linesStep), j, i+(40*linesStep), j);     //liee orizontali  
                  }}
   
       for( i = 0; i<=width; i = i+(100*linesStep)){
          for( j = 50*linesStep; j<=width; j = j+(100*linesStep)){
              line(i+(85*linesStep), j, i+(115*linesStep), j);   //liee orizontali  
                   }}
  
   stroke(linesColorY*153);  // colore linee verticali che viariano con la posizione
                             // sull'asse delle X del fiducial   
    for( i = 0; i<=width; i = i+(100*linesStep)){
          for( j = 125*linesStep; j<=width; j = j+(100*linesStep)){
              line(j, i+(60*linesStep), j, i+(90*linesStep));     //liee veritcali  
                }}  
 
   for( i = 0; i<=width; i = i+(100*linesStep)){
       for( j = 75*linesStep; j<=width; j = j+(100*linesStep)){
           line(j, i+(10*linesStep), j, i+(40*linesStep));   //liee veritcali  
                }} 

   for( i = 0; i<=width; i = i+(100*linesStep)){
       for( j = 50*linesStep; j<=width; j = j+(100*linesStep)){
          line(j, i+(35*linesStep), j, i+(65*linesStep));   //liee veritcali  
               }}

    for( i = 0; i<=width; i = i+(100*linesStep)){
        for( j = 100*linesStep; j<=width; j = j+(100*linesStep)){
           line(j, i+(85*linesStep), j, i+(115*linesStep));     //liee veritcali  
                }}
               
        stroke (153); // colore linee diagonali
    for( i = (50*linesStep); i<=width+(50*linesStep); i = i+(50*linesStep)) line(i, 0, 0, i);    // linee diagonali
    for( i = (50*linesStep); i<=height+(50*linesStep); i = i+(50*linesStep))  line(i, width, width, i);   // linee diagonali

   
}

