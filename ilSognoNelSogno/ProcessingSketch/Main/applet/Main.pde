import TUIO.*;   // TUIO Library
import oscP5.*;  // oscP5 Library
import netP5.*; // netP5 Library
OscP5 oscP5; // OscP5 value
NetAddress myRemoteLocation; // OSC Address
TuioProcessing tuioClient; // TUIO Client


void setup()
{
  //size(screen.width,screen.height);
  size(1400,1050); // window size
  loop(); 
  frameRate(30); // saple rate of the application
  hint(ENABLE_NATIVE_FONTS); // enable font
  font = createFont("Arial", 18); // font
  scale_factor = height/table_size; // scaling scale factor
  tuioClient  = new TuioProcessing(this);  // TUIO Client
  oscP5 = new OscP5(this,7400);  // OSC Port
  myRemoteLocation = new NetAddress("127.0.0.1",7400); // OSC addres
}

// within the draw method we retrieve a Vector (List) of TuioObject and TuioCursor (polling)
// from the TuioProcessing client and then loop over both lists to draw the graphical feedback.
void draw()
{
  background(1); // background
  interfaceDraw(); // interface draw function
  Vector tuioObjectList = tuioClient.getTuioObjects();
  for (int i=0;i<tuioObjectList.size();i++) {  // fiducial number on the table
    TuioObject tobj = (TuioObject)tuioObjectList.elementAt(i); // polling of all fiducial on the table
    fiducialColor(tobj.getSymbolID(), tobj.getAngle()); // fiducial color choice
    fiducial(tobj.getSymbolID(), tobj.getScreenX(width), tobj.getScreenY(height), tobj.getAngle(), fiducialColorR, fiducialColorG, fiducialColorB); // fiducial draw
   }
}

// representing the end of an image frame
void refresh(TuioTime bundleTime) { 
  redraw(); // Disegna ogni qual volta che arriva un pacchetto di messaggi OSC
}
