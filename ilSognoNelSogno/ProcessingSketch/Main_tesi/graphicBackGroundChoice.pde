 int graphicBackGround1, graphicBackGround2, graphicBackGround3; // intercace ID
 
// Scelta degli sfondi grafici in caso di updateTuioObject
 void nextGraphicBackground(int ID){

// Attivazione sfondo grafico n.1
 if (ID == 1) {graphicBackGround1 = 1; 
               graphicBackGround2 = 0;
               graphicBackGround3 = 0;}
// Attivazine sfondo grafico n.2
  if (ID == 2) {graphicBackGround1 = 0;
                graphicBackGround2 = 1;
                graphicBackGround3 = 0;}
 // Attivatione sfondo grafico n.3
  if (ID == 3) {graphicBackGround1 = 0;
                graphicBackGround2 = 0;
                graphicBackGround3 = 1;}
}
 
 // Scelta degli sfondi grafici in caso di removeTuioObject
 void previousGraphicBackground(int ID){
// Nessuna attivazione di sfondi grafici
  if (ID == 1) {graphicBackGround1 = 0;
                graphicBackGround2 = 0;
                graphicBackGround3 = 0;}
// Attivazine sfondo grafico n.1
  if (ID == 2) {graphicBackGround1 = 1;
                graphicBackGround2 = 0;
                graphicBackGround3 = 0;}
// Attivazine sfondo grafico n.2
  if (ID == 3) {graphicBackGround1 = 0;
                graphicBackGround2 = 1;
                graphicBackGround3 = 0;}  
}
 
// Chiamata di una delle funzioni
 void graphicBackgroundDraw(){
      if(graphicBackGround1 == 1)  graphicBackGround1(); // Chiamata della funzione "graphicBackGround1"
      else if(graphicBackGround2 == 1) graphicBackGround2(); // Chiamata della funzione "graphicBackGround2"
      else if(graphicBackGround3 == 1) graphicBackGround3(); // Chiamata della funzione "graphicBackGround3"
 }
 
 
 
