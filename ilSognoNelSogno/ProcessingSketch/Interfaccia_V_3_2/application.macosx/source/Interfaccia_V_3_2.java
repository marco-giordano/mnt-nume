import processing.core.*; 
import processing.xml.*; 

import TUIO.*; 
import oscP5.*; 
import netP5.*; 

import com.illposed.osc.utility.*; 
import TUIO.*; 
import com.illposed.osc.*; 
import oscP5.*; 
import netP5.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class Interfaccia_V_3_2 extends PApplet {

   // TUIO Library
  // oscP5 Library
 // netP5 Library
OscP5 oscP5; // OscP5 value
NetAddress myRemoteLocation;
TuioProcessing tuioClient; // TUIO Client


public void setup()
{
  //size(screen.width,screen.height);
  size(1400,1050); // window size
  loop(); 
  frameRate(30); // saple rate of the application
  hint(ENABLE_NATIVE_FONTS); // enable font
  font = createFont("Arial", 18);
  scale_factor = height/table_size; // scaling scale factor
  tuioClient  = new TuioProcessing(this);  // TUIO Client
  oscP5 = new OscP5(this,7400);  // OSC Port
  myRemoteLocation = new NetAddress("127.0.0.1",7400); // OSC addres
}

// within the draw method we retrieve a Vector (List) of TuioObject and TuioCursor (polling)
// from the TuioProcessing client and then loop over both lists to draw the graphical feedback.
public void draw()
{
  background(1); // background
  interfaceDraw(); 
  Vector tuioObjectList = tuioClient.getTuioObjects();
  for (int i=0;i<tuioObjectList.size();i++) {  // fiducial number on the table
    TuioObject tobj = (TuioObject)tuioObjectList.elementAt(i); // polling of all fiducial on the table
    fiducialColor(tobj.getSymbolID(), tobj.getAngle()); // fiducial color choice
    fiducial(tobj.getSymbolID(), tobj.getScreenX(width), tobj.getScreenY(height), tobj.getAngle(), fiducialColorR, fiducialColorG, fiducialColorB); // fiducial draw
   }
}

// representing the end of an image frame
public void refresh(TuioTime bundleTime) { 
  redraw(); // Disegna ogni qual volta che arriva un pacchetto di messaggi OSC
}
 int interface1, interface2, interface3; // intercace ID
 
 // choice of one of the interfaces
 public void nextInterface(int ID){
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
 public void previousInterface(int ID){
   
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
 public void interfaceDraw(){
      if(interface1 == 1)  Pianoforte();  // draw "Pianoforte" interface
      else if(interface2 == 1) Violoncello();  // draw "Violoncello" interface
      else if(interface3 == 1) Sax_Basso();  // draw "Sax_Basso" interface
 }
int OnOff; // variabile utilizzata per mandare di un messaggio di On o Off del fiducial a Max/MSP

public void addTuioObject(TuioObject tobj) { // called when an object is added

   nextInterface(tobj.getSymbolID());
                                                                  
 OscMessage addObject = new OscMessage("addObject"); // Creation of OSC message
  addObject.add(tobj.getSymbolID()); // ID
  addObject.add(tobj.getX()); // Coordinate X axis
  addObject.add(tobj.getY()); // Coordinate Y axis
  addObject.add(tobj.getAngle()); // Angle
  oscP5.send(addObject, myRemoteLocation); // Spedizione del messaggio OSC
}
//-------------------------------


public void removeTuioObject(TuioObject tobj) { // called when an object is removed

  previousInterface(tobj.getSymbolID());              
  
OscMessage removeObject = new OscMessage("removeObject"); // Creation of OSC message
  removeObject.add(tobj.getSymbolID()); // ID
  removeObject.add(tobj.getX()); // Coordinate X axis
  removeObject.add(tobj.getY()); // Coordinate Y axis2
  removeObject.add(tobj.getAngle()); // Angle
  oscP5.send(removeObject, myRemoteLocation); // Spedizione del messaggio OSC
}
//-------------------------------

public void updateTuioObject (TuioObject tobj) { // called when an object is moved
 OscMessage updateObject = new OscMessage("updateObject"); // Creation of OSC message
  updateObject.add(tobj.getSymbolID()); // ID
  updateObject.add(tobj.getX()); // Coordinate X axis
  updateObject.add(tobj.getY()); // Coordinate Y axis
  updateObject.add(tobj.getAngle()); // Angle
  oscP5.send(updateObject, myRemoteLocation); // Spedizione del messaggio OSC
  
     if(tobj.getSymbolID()==4) { if(tobj.getScreenX(width)<=width/2.f) linesColorX =  map(tobj.getScreenX(width), 0, width/2, 1, 0);    // riscalamento del colore delle linee sull'asse X dell'interfaccia "Violoncello"
                                 else if(tobj.getScreenX(width)>width/2.f) linesColorX =  map(tobj.getScreenX(width), width/2, width, 0, 1);    // riscalamento del colore delle linee sull'asse X dell'interfaccia "Violoncello"
                                 if(tobj.getScreenY(height)<=height/2.f) linesColorY =  map(tobj.getScreenY(height), 0, height/2, 1, 0);    // riscalamento del colore delle linee sull'asse X dell'interfaccia "Violoncello"
                                 else if(tobj.getScreenY(height)>height/2.f) linesColorY =  map(tobj.getScreenY(height), height/2, height, 0, 1);  } // riscalamento del colore delle linee sull'asse Y dell'interfaccia "Violoncello"
   
     if (tobj.getSymbolID()==5)  { if(tobj.getScreenX(width)<=width/2.f) squareColorX =  map(tobj.getScreenX(width), 0, width/2, 1, 0);    // riscalamento del colore delle linee sull'asse X dell'interfaccia "Violoncello"
                                 else if(tobj.getScreenX(width)>width/2.f) squareColorX =  map(tobj.getScreenX(width), width/2, width, 0, 1);    // riscalamento del colore delle linee sull'asse X dell'interfaccia "Violoncello"
                                 if(tobj.getScreenY(height)<=height/2.f) squareColorY =  map(tobj.getScreenY(height), 0, height/2, 1, 0);    // riscalamento del colore delle linee sull'asse X dell'interfaccia "Violoncello"
                                 else if(tobj.getScreenY(height)>height/2.f) squareColorY =  map(tobj.getScreenY(height), height/2, height, 0, 1);  }  
  }
int sizeEll = 30; // ellipse size
int sizeSquare2 = 125; // square size

public void Pianoforte(){

// draw lines
    stroke (153);
    strokeWeight(sizeEll);
    for(i = sizeSquare2; i<height; i=i+sizeSquare2) line (0, i, width, i); // horizontal lines
    for(i = sizeSquare2; i<width; i=i+sizeSquare2) line (i, 0, i, height); // vertical lines

// draw ellipse
    for(int ix = sizeSquare2; ix<width; ix=ix+sizeSquare2){  // ellipse on the X axses
    for(int iy = sizeSquare2; iy<height; iy=iy+sizeSquare2) { // ellipse on the Y axses
      strokeWeight(10); // sphere size
      fill(255); // ellipse color
      stroke(255); // edge color
       ellipse (ix, iy, sizeEll, sizeEll); // ellipse
     }}
         strokeWeight(2);  
 
}
int sizeSquare = 100; // square size
float linesColor; // lines color
float squareColorX, squareColorY; // square color
int x,y; // "for" value

public void Sax_Basso(){
   strokeWeight(0);

 linesColor = (squareColorX * squareColorY)*153; // lines color
  
  // first group of squares 
for(y=0; y<height; y=y+sizeSquare*2){
  for(x=sizeSquare/2; x<width; x=x+sizeSquare*2){
    strokeWeight(0); // edge size of square
    fill(squareColorX*153); // square color
    rect(x, y, sizeSquare, sizeSquare); // square
    strokeWeight(0);
    stroke(153); // lines color
    line (0, y, width, y); // color of line between the squares
         }}
  // first group of squares 
  for(y=sizeSquare; y<height; y=y+sizeSquare*2){   
    for(x=sizeSquare; x<width; x=x+sizeSquare*2){ 
    strokeWeight(0); // edge size of square
    fill(squareColorY*153); // square color
    rect(x, y, sizeSquare, sizeSquare); // square
    strokeWeight(0); // 
    stroke(153); // color of line between the squares
    line (0, y, width, y); // linea orizzontale tra una fila di quadrati e l'altra 
  }}
}

float linesColorX, linesColorY; // variabili per determinare il colore delle linee sull'asse X ed Y
int linesStep = 2; // cosante per stabilire il passo tra le linee
int i,j,jj, k; // variabili per cicli for

public void Violoncello(){

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

int fiducialColorR, fiducialColorG, fiducialColorB = 0;

public void fiducialColor (int ID, float angle){
     
      if(angle<3.1415937f) angle=map(angle, 0.f, 3.1415937f, 0.f, 1.f);  // rescaled value for intensity color of the fiducial
      else angle=map(angle, 3.1415937f, 6.283165f, 1.f, 0.f);  // rescaled value for intensity color of the fiducial


// FIDUCIAL SPAZIALIZZATORE ELABORATORI
  if( ID == 0){ // ID test
           fiducialColorR = 0; // Red component of the fiducial color's
           fiducialColorG = PApplet.parseInt(255*angle); // Green component of the fiducial color's
           fiducialColorB = PApplet.parseInt(255*angle); // Blue component of the fiducial color's
           } 
  
 // FIDUCIAL PIANOFORTE
 else if(ID == 1){ // controllo dell'ID del fIDucial
           fiducialColorR =  PApplet.parseInt(200*angle); // Red component of the fiducial color's
           fiducialColorG = 0; // Green component of the fiducial color's
           fiducialColorB = 0; // Blue component of the fiducial color's
           }
 // FIDUCIAL VIOLONCELLO
 else if( ID == 2){ // controllo dell'ID del fIDucial
           fiducialColorR = 0; // Red component of the fiducial color's
           fiducialColorG =  PApplet.parseInt(200*angle); // Green component of the fiducial color's
           fiducialColorB = 0; // Blue component of the fiducial color's
           }
// FIDUCIAL SAX BASSO
 else if(ID == 3){ // controllo dell'ID del fIDucial
           fiducialColorR = 0; // Red component of the fiducial color's
           fiducialColorG = 0; // Green component of the fiducial color's
           fiducialColorB =  PApplet.parseInt(200*angle); // Blue component of the fiducial color's
           }
// FIDUCIAL ELABORATORE VIOLONCELLO
 else if( ID == 4){ // controllo dell'ID del fIDucial
           fiducialColorR = 0; // Red component of the fiducial color's
           fiducialColorG =  PApplet.parseInt(255); // Green component of the fiducial color's
           fiducialColorB = 0; // Blue component of the fiducial color's
           }
// FIDUCIAL ELABORATORE SAX BASSO
  else if(ID == 5){ // controllo dell'ID del fiducial
           fiducialColorR = 0; // Red component of the fiducial color's
           fiducialColorG = 0; // Green component of the fiducial color's
           fiducialColorB =  PApplet.parseInt(255); // Blue component of the fiducial color's
           }
// FIDUCIAL CADUTA PIANOFORTE
 else if( ID == 6){ // controllo dell'ID del fiducial
           fiducialColorR =  PApplet.parseInt(50*angle); // Red component of the fiducial color's
           fiducialColorG =  PApplet.parseInt(50*angle); // Green component of the fiducial color's
           fiducialColorB =  PApplet.parseInt(50*angle); // Blue component of the fiducial color's
           }
// FIDUCIAL CADUTA VIOLONCELLO  
 else if( ID == 7){ // controllo dell'ID del fiducial
           fiducialColorR =  PApplet.parseInt(50*angle); // Red component of the fiducial color's
           fiducialColorG =  PApplet.parseInt(50*angle); // Green component of the fiducial color's
           fiducialColorB =  PApplet.parseInt(50*angle); // Blue component of the fiducial color's
           }
// FIDUCIAL SOFFIO
 else if( ID == 8){ // controllo dell'ID del fiducial
           fiducialColorR =  PApplet.parseInt(50*angle); // Red component of the fiducial color's
           fiducialColorG =  PApplet.parseInt(50*angle); // Green component of the fiducial color's
           fiducialColorB =  PApplet.parseInt(50*angle); // Blue component of the fiducial color's
           }
           
// FIDUCIAL NAVE
 else if( ID == 9){ // controllo dell'ID del fiducial
           fiducialColorR =  PApplet.parseInt(50*angle); // Red component of the fiducial color's
           fiducialColorG =  PApplet.parseInt(50*angle); // Green component of the fiducial color's
           fiducialColorB =  PApplet.parseInt(50*angle); // Blue component of the fiducial color's
           }
}
float object_size = 118; // fiducial size
float table_size = 760; // table size
float scale_factor = 1; // scale factor
PFont font; // fiducial text font

public void fiducial(int ID, float X, float Y, float angle, int R, int G,int B){

     textFont(font,18*scale_factor);  // text font size
     float obj_size = object_size*scale_factor;  // fiducial size
     pushMatrix(); // save old fiducial conrdinate
     translate(X,Y); // fiducial translation
     rotate(angle); // fiducial rotation
     stroke(R, G, B); // fiducial edge color
     fill(R, G, B); // fiducial color
     ellipse(0,0,obj_size,obj_size); // ellipse (fiducial)
     strokeWeight(3); // text and pinter edge size
     stroke(255*angle); // text and pinter edge color
     fill(255*angle); // text and pinter color
     line(0, -obj_size/2, 0, 0); // pinter
     popMatrix(); // new fiducial coordinate
     fill(255); // ID color
     text(""+ID, X+50, Y); // write ID
     println("ID:"+ID+"  X:"+X+"  Y:"+Y+"  Angle:"+angle); // print fiducial value
  
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--hide-stop", "Interfaccia_V_3_2" });
  }
}
