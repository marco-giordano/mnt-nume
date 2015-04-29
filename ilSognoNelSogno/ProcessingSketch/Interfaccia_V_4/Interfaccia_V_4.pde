import TUIO.*;   // Importazione della libreria TUIO
import oscP5.*;  // Importazione della libreria OSCP5
import netP5.*; // Importazione della libreria netP5
OscP5 oscP5; // Dichiarazioni delle variabili della corrispettiva libreria
NetAddress myRemoteLocation; // Dichiarazioni delle variabili della corrispettiva libreria
TuioProcessing tuioClient;

// these are some helper variables which are used
// to create scalable graphical feedback
float object_size = 118; // dimensioni del fiducial
float table_size = 760; // dimensioni tabella
float scale_factor = 1; // fattore di riscalamento

int ID; // variabile per passare il fiducial ID alla unzione che stabilisce il colore dei fiducial
int coloreFiducialR, coloreFiducialG, coloreFiducialB = 0; // diciarazione variabili per stabilire il colore del fiducial
PFont font; // dichiarazionie font del fiducial
int OnOff; // variabile utilizzata per mandare di un messaggio di On o Off del fiducial a Max/MSP

// VARIABILI INTERFACCIA
int interfaccia1, interfaccia2, interfaccia3;
int contatore, contatore2, contatore3;
float pulse, pulse2, pulse3;
int i;

ArrayList circles;
int numRings = 30;
 
boolean bAnimate = false;
 
int increment = 10;




void setup()
{
  //size(screen.width,screen.height);
  size(1400,1050);
  noStroke();
  fill(0);  
  loop();
  frameRate(30); 
  //noLoop();
  hint(ENABLE_NATIVE_FONTS);
  font = createFont("Arial", 18);
  scale_factor = height/table_size;
  tuioClient  = new TuioProcessing(this); 
  oscP5 = new OscP5(this,7400);  // indirizzo della porta a cui mandare i messaggi OSC
  myRemoteLocation = new NetAddress("127.0.0.1",7400); // indirizzo della porta a cui mandare i messaggi OSC
  
  smooth();
   
  circles = new ArrayList();
   
  // create n rings of squares
  for(int i=0; i<numRings; i++){
    Circle c = new Circle(55 + 40*i, 18 + 14*i);    // replicates radius and square num of original
    c.setPosition(width/2,height/2);
    circles.add( c );
  }
  

}

// within the draw method we retrieve a Vector (List) of TuioObject and TuioCursor (polling)
// from the TuioProcessing client and then loop over both lists to draw the graphical feedback.
void draw()
{
  


  background(125);
    
  if(bAnimate)            // in case you want to see the circles rotate, it adds another layer
    rotateCircles();

  for(int i=0; i<circles.size(); i++){

    Circle c = (Circle) circles.get(i);
    int direction = i%2==0 ? -1 : 1;
    c.rotateSquares(direction*PI*mouseX/width);
    c.display(); }

// ---- INIZIO DISEGNO INTERFACCIA ----
  
      if(interfaccia1 == 1) i = 0;
      else if(interfaccia2 == 1)  i = 0;
      else if(interfaccia3 == 1)  i = 0;
//---- FINE DISEGNO INTERFACCIA
  
  Vector tuioObjectList = tuioClient.getTuioObjects();
  for (int i=0;i<tuioObjectList.size();i++) {
     TuioObject tobj = (TuioObject)tuioObjectList.elementAt(i);
  
//---- INIZIO DISEGNO FIDUCIAL ---
     ID = tobj.getSymbolID();
     colore_fiducial(); // scdmq3elta colore fiducial
     textFont(font,18*scale_factor);  // dimensione font ID fiducial
     float obj_size = object_size*scale_factor;  // dimensione fiducial
     pushMatrix(); // salva le coordinate dell'ogetto
     translate(tobj.getScreenX(width),tobj.getScreenY(height)); // trasla il fiducial
     rotate(tobj.getAngle()); // ruota il fiducial
     stroke(coloreFiducialR, coloreFiducialG, coloreFiducialB); // colore bordo fiducial
     fill(coloreFiducialR, coloreFiducialG, coloreFiducialB); // colore del fiducial con le 3 componenti decise appena sopra
     ellipse(0,0,obj_size,obj_size);
     strokeWeight(3); // spessore font fiducial
     stroke(255); // colore bordo indicatore verso del fiducial
     fill(255); // colore indicatore verso del fiducial
     line(0, -obj_size/2, 0, 0); // linea del verso
     popMatrix(); // resituisce l'ogetto con le nuove coordinate
     fill(255); // colore testo ID fiducial
     text(""+tobj.getSymbolID(), tobj.getScreenX(width)+50, tobj.getScreenY(height)); // scrittura dell'ID del fiducial
     println("ID:"+tobj.getSymbolID()+"  X:"+tobj.getScreenX(width)+"  Y:"+tobj.getScreenY(height)+"  Angle:"+tobj.getAngle() );
//--- FINE DISEGNO FIDUCIAL ---
   }
}

void addTuioObject(TuioObject tobj) {
  OnOff = 1; // Messaggio di ON da inviare a Max/MSP

   if (tobj.getSymbolID() == 1) {interfaccia1 = 1; // caricamento interfaccia "Pianoforte" se viene inserito il fiducial 1
                                 interfaccia2 = 0;
                                 interfaccia3 = 0;}
  if (tobj.getSymbolID() == 2) {interfaccia1 = 0; // caricamento interfaccia "Violoncello" se viene inserito il fiducial 2
                                interfaccia2 = 1;
                                interfaccia3 = 0;}
  if (tobj.getSymbolID() == 3) {interfaccia1 = 0; // caricamento interfaccia "Sax_Basso" se viene inserito il fiducial 3
                                interfaccia2 = 0;
                                interfaccia3 = 1;}
                                                                  
 OscMessage addObject = new OscMessage("addObject"); // Creazione del messaggio OSC
  addObject.add(tobj.getSessionID());  // Session ID
  addObject.add(tobj.getSymbolID()); // ID
  addObject.add(tobj.getX()); // Coordinata Asse X
  addObject.add(tobj.getY()); // Coordinata Asse Y
  addObject.add(tobj.getAngle()); // Angolo/Rotazione
  addObject.add(OnOff); // Numero di Caduta
  oscP5.send(addObject, myRemoteLocation); // Spedizione del messaggio OSC
}

void removeTuioObject(TuioObject tobj) {
  OnOff = 0; // Messaggio di OFF da inviare a Max/MSP
  if (tobj.getSymbolID() == 1) {interfaccia1 = 0;  // svuotamento interfaccia in caso viene rimosso il fiducial 1
                                interfaccia2 = 0;
                                interfaccia3 = 0;}
  if (tobj.getSymbolID() == 2) {interfaccia1 = 1; // caricamento interfaccia "Pianoforte" in cui viene rimosso il fiducial 2
                                interfaccia2 = 0;
                                interfaccia3 = 0;}
  if (tobj.getSymbolID() == 3) {interfaccia1 = 0; // caricamento interfaccia "Violoncello" in caso in cui viene rimosso il fiducial 3
                                interfaccia2 = 1;
                                interfaccia3 = 0;}                                                           
OscMessage removeObject = new OscMessage("removeObject"); // Creazione del messaggio OSC
  removeObject.add(tobj.getSessionID());  // Session ID
  removeObject.add(tobj.getSymbolID()); // ID
  removeObject.add(tobj.getX()); // Coordinata Asse X
  removeObject.add(tobj.getY()); // Coordinata Asse Y2
  removeObject.add(tobj.getAngle()); // Angolo/Rotazione
  removeObject.add(OnOff);  // Fiducial On/Off
  oscP5.send(removeObject, myRemoteLocation); // Spedizione del messaggio OSC
}

// called when an object is moved
void updateTuioObject (TuioObject tobj) {
 OscMessage updateObject = new OscMessage("updateObject"); // Creazione del messaggio OSC
  updateObject.add(tobj.getSessionID());  // Session ID
  updateObject.add(tobj.getSymbolID()); // ID
  updateObject.add(tobj.getX()); // Coordinata Asse X
  updateObject.add(tobj.getY()); // Coordinata Asse Y
  updateObject.add(tobj.getAngle()); // Angolo/Rotazione
  updateObject.add(OnOff); // Numero di Caduta
  oscP5.send(updateObject, myRemoteLocation); // Spedizione del messaggio OSC
   }

// representing the end of an image frame
void refresh(TuioTime bundleTime) { 
  redraw(); // Disegna ogni qual volta che arriva un pacchetto di messaggi OSC
}
