import TUIO.*; // Importazione libreria "TUIO"
import oscP5.*; // Importazione libreria "oscP5"
import netP5.*; // Importazione libreria "netP5"
OscP5 oscP5; // Inizializzazione libreria "oscP5"
NetAddress myRemoteLocation; // Inizializzazione indirizzo del messaggio OSC
TuioProcessing tuioClient; // Inizializzazione TUIO CLient


void setup()
{
  size(1400,1050); // Dimensioni finestra
  loop(); // Ciclo di loop
  frameRate(30); // Impostazione frame rate a 30 frame al secondo
  hint(ENABLE_NATIVE_FONTS); // Abilitazione utilizzo del font
  font = createFont("Arial", 18); // Scelta del font dei caratteri
  scale_factor = height/table_size; // Fattore di riscalamento
  tuioClient  = new TuioProcessing(this); // impostazione del TUIO Client
  oscP5 = new OscP5(this,7400); // Impostazione della porta a cui mandare messaggi OSC
  myRemoteLocation = new NetAddress("127.0.0.1",7400); // Impostazione della porta a cui mandare messaggi OSC
}

void draw()
{
  background(1); // Sfondo nero
  graphicBackgroundDraw(); // Funzione "graphicBackgroundDraw"
  Vector tuioObjectList = tuioClient.getTuioObjects(); // Polling su tutti i fiducial
  for (int i=0;i<tuioObjectList.size();i++) {
    TuioObject tobj = (TuioObject)tuioObjectList.elementAt(i);
    fiducialColor(tobj.getSymbolID(), tobj.getAngle()); // Funzione "fiducialColor"
    fiducial(tobj.getSymbolID(), tobj.getScreenX(width), tobj.getScreenY(height), tobj.getAngle(), fiducialColorR, fiducialColorG, fiducialColorB); // Funzione "fiducial"
   }
}

void refresh(TuioTime bundleTime) { 
  redraw(); // Disegna ogni qual volta che arriva un pacchetto di messaggi OSC
}








