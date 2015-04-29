 int graphicBackGround1, graphicBackGround2, graphicBackGround3; // intercace ID
 
 // choice of one of the interfaces
 void nextGraphicBackground(int ID){
 if (ID == 1) {graphicBackGround1 = 1; // firts (graphicBackGround1) graphic background will work
               graphicBackGround2 = 0;
               graphicBackGround3 = 0;}
  if (ID == 2) {graphicBackGround1 = 0; // second (graphicBackGround2) graphic background will work
                graphicBackGround2 = 1;
                graphicBackGround3 = 0;}
  if (ID == 3) {graphicBackGround1 = 0; // third (graphicBackGround3) graphic background will work
                graphicBackGround2 = 0;
                graphicBackGround3 = 1;}
                                
 }
 
 // choice of one of the interfaces 
 void previousGraphicBackground(int ID){
   
   if (ID == 1) {graphicBackGround1 = 0;  // no graphic background will work
                 graphicBackGround2 = 0;
                 graphicBackGround3 = 0;}
  if (ID == 2) { graphicBackGround1 = 1; // firts (graphicBackGround1) graphic background will work
                 graphicBackGround2 = 0;
                 graphicBackGround3 = 0;}
  if (ID == 3) {graphicBackGround1 = 0; // second (graphicBackGround2) graphic background will work
                graphicBackGround2 = 1;
                graphicBackGround3 = 0;}  
 }
 
 // draw of one of the interfaces
 void graphicBackgroundDraw(){
      if(graphicBackGround1 == 1)  graphicBackGround1();  // draw "graphicBackGround1" graphic background
      else if(graphicBackGround2 == 1) graphicBackGround2();  // draw "graphicBackGround2" graphic background
      else if(graphicBackGround3 == 1) graphicBackGround3();  // draw "graphicBackGround3" graphic background
 }
