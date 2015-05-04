 int interface1, interface2, interface3; // intercace ID
 
 // choice of one of the interfaces
 void nextInterface(int ID){
 if (ID == 1) {interface1 = 1; // firts (Pianoforte) interface will work
               interface2 = 0;
               interface3 = 0;}
  if (ID == 2) {interface1 = 0; // second (Violoncello) interface will work
                interface2 = 1;
                interface3 = 0;}
  if (ID == 3) {interface1 = 0; // third (SaxBasso) interface will work
                interface2 = 0;
                interface3 = 1;}
                                
 }
 
 // choice of one of the interfaces 
 void previousInterface(int ID){
   
   if (ID == 1) {interface1 = 0;  // no interfaces will work
                 interface2 = 0;
                 interface3 = 0;}
  if (ID == 2) { interface1 = 1; // firts (Pianoforte) interface will work
                 interface2 = 0;
                 interface3 = 0;}
  if (ID == 3) {interface1 = 0; // second (Violoncello) interface will work
                interface2 = 1;
                interface3 = 0;}  
 }
 
 // draw of one of the interfaces
 void interfaceDraw(){
      if(interface1 == 1)  Pianoforte();  // draw "Pianoforte" interface
      else if(interface2 == 1) Violoncello();  // draw "Violoncello" interface
      else if(interface3 == 1) Sax_Basso();  // draw "Sax_Basso" interface
 }
