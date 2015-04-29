import TUIO.*;
import oscP5.*;  // Importazione della libreria OSCP5
import netP5.*; // Importazione della libreria netP5
OscP5 oscP5; // Dichiarazioni delle variabili della corrispettiva libreria
NetAddress myRemoteLocation; // Dichiarazioni delle variabili della corrispettiva libreria
TuioProcessing tuioClient;

// these are some helper variables which are used
// to create scalable graphical feedback
float cursor_size = 15;
float object_size = 118;
float table_size = 760;
float scale_factor = 1;
int coloreFiducialR, coloreFiducialG, coloreFiducialB = 0;
PFont font;
int alg, cad, OnOff, distMax;

// VARIABILI INTERFACCIA
int x1,x2,y1,y2;
float cursore = 0;
float coloreLinea;
float coloreLineax2, coloreLineax3;
float coloreLineay2, coloreLineay3;

int interfaccia1, interfaccia2, interfaccia3 = 0;

int ID, X, Y;
float ang;
int i,j,jj, k;
int passoLinee = 2;
int dimSf = 30; //dimensione sfere seconda interfaccia
int dimQ2 = 125; //dimensione quadrati seconda interfaccia
int dimQ3 = 100; //dimensione quadrati terza interfaccia

void setup()
{
  //size(screen.width,screen.height);
  size(1400,1050);
  noStroke();
  fill(0);
  
  loop();
  frameRate(1000);
  //noLoop();
  hint(ENABLE_NATIVE_FONTS);
  font = createFont("Arial", 18);
  scale_factor = height/table_size;



  tuioClient  = new TuioProcessing(this); 
 oscP5 = new OscP5(this,7400);  // indirizzo della porta a cui mandare i messaggi OSC
  myRemoteLocation = new NetAddress("127.0.0.1",7400); // indirizzo della porta a cui mandare i messaggi OSC
}

// within the draw method we retrieve a Vector (List) of TuioObject and TuioCursor (polling)
// from the TuioProcessing client and then loop over both lists to draw the graphical feedback.
void draw()
{
  background(1);
   
  Vector tuioObjectList = tuioClient.getTuioObjects();
  for (int i=0;i<tuioObjectList.size();i++) {
     TuioObject tobj = (TuioObject)tuioObjectList.elementAt(i);
ID = tobj.getSymbolID();
X = tobj.getScreenX(width);
Y = tobj.getScreenY(height);
ang = tobj.getAngle();
     
 // calcolo colori per interfacce     
if(ID==2) { coloreLineax2 =  map(tobj.getScreenX(width), 0, width, 0, 1);
                            coloreLineay2 = map(tobj.getScreenY(height), 0, height, 0, 1); }
if(ID==3) { coloreLineax3 =  map(tobj.getScreenX(width), 0, width, 0, 1);
                            coloreLineay3 = map(tobj.getScreenY(height), 0, height, 0, 1); }
   
   
   if(interfaccia3 == 1) Sax_Basso();
   if(interfaccia2 == 1) Violoncello();
   if(interfaccia1 == 1) Pianoforte();
   colore_fiducial();
   fiducial();
   }
   
      
}

void addTuioObject(TuioObject tobj) {
  OnOff = 1;
  if (tobj.getSymbolID() == 1)  interfaccia1 = 1;
  if (tobj.getSymbolID() == 2)  { interfaccia2 = 1;
                                  interfaccia1 = 0;}
  if (tobj.getSymbolID() == 3) { interfaccia3 = 1;
                                interfaccia1 = 0;
                                interfaccia2 = 0;
                                }

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
  OnOff =0;
  
  if (tobj.getSymbolID() == 1)  interfaccia1 = 0;
  if (tobj.getSymbolID() == 2)  { interfaccia2 = 0;
                                  interfaccia1 = 1;}
  if (tobj.getSymbolID() == 3) { interfaccia3 = 0;
                                interfaccia1 = 0;
                                interfaccia2 = 1;
                                }
                                 
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
  redraw();
}
