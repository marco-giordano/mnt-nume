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

public class Interfaccia_V_2 extends PApplet {


  // Importazione della libreria OSCP5
 // Importazione della libreria netP5
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
float coloreLineax;
float coloreLineay;
int contatore = 0;
int i,j,jj, k;
int passoLinee = 2;
int dimSf = 30; //dimensione sfere seconda interfaccia
int dimQ2 = 125; //dimensione quadrati seconda interfaccia
int dimQ3 = 100; //dimensione quadrati terza interfaccia

public void setup()
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
public void draw()
{
  background(1);
  textFont(font,18*scale_factor);
  float obj_size = object_size*scale_factor; 
  float cur_size = cursor_size*scale_factor; 
   
  Vector tuioObjectList = tuioClient.getTuioObjects();
  for (int i=0;i<tuioObjectList.size();i++) {
     TuioObject tobj = (TuioObject)tuioObjectList.elementAt(i);
  
  /////////////////////////////////////////
  //           QUARTA INTERFACCIA        //
  /////////////////////////////////////////
    
if (tobj.getSymbolID() == 5){ // controllo dell'ID del fiducial
   strokeWeight(0);
// La posizione del fiducial decide il colore di quadrati
 coloreLineax =  map(tobj.getScreenX(width), 0, width, 0, 1);
 coloreLineay = map(tobj.getScreenY(height), 0, height, 0, 1);
 coloreLinea = (coloreLineax * coloreLineay)*153;
  
  // cicli for che premettono di disegnare i quadrati
for(y1=0; y1<height; y1=y1+dimQ3*2){
  for(y2=dimQ3; y2<height; y2=y2+dimQ3*2){
    for(x1=dimQ3/2; x1<width; x1=x1+dimQ3*2){
      for(x2=dimQ3; x2<width; x2=x2+(dimQ3*2)){

   fill(coloreLineax*255);
  rect(x1, y1, dimQ3, dimQ3); // fila di quadrati
     fill(coloreLineay*255);
  rect(x2, y2, dimQ3, dimQ3); // fila di quadrati
      }}
      
  stroke(153);
  line (0, y1, width, y1); // linea orizzontale tra una fila di quadrati e l'altra
  line (0, y2, width, y2); // linea orizzontale tra una fila di quadrati e l'altra 
  }
 } 
}

  /////////////////////////////////////////
  //           TERZA INTERFACCIA         //
  /////////////////////////////////////////

if (tobj.getSymbolID() == 3){ // controllo dell'ID del fiducial
// generatore linee
    stroke (153);
    strokeWeight(dimSf);
    for(i = dimQ2; i<height; i=i+dimQ2) line (0, i, width, i);
    for(i = dimQ2; i<width; i=i+dimQ2) line (i, 0, i, height);

// generatore sfere
    for(int ix = dimQ2; ix<width; ix=ix+dimQ2){
    for(int iy = dimQ2; iy<width; iy=iy+dimQ2) {
      strokeWeight(10);    
      fill(255);
      stroke(255);
       ellipse (ix, iy, dimSf, dimSf);
     }}
   }
  //////////////////////////////////////////
  //     FINE  TERZA INTERFACCIA        //
  //////////////////////////////////////////
  
//------------------------------------------

//////////////////////////////////////////
//          SECONDA INTERFACCIA        //
/////////////////////////////////////////
  
if (tobj.getSymbolID() == 0){ // controllo dell'ID del fiducial
     stroke(PApplet.parseInt(map(tobj.getScreenX(width), 0, width, 0, 255))); // colore linee orizontali che varia con la posizione
                                                                 // sull'asse delle Y del fiducial   
        for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 0; j<=width; j = j+(100*passoLinee)){
      line(i+(35*passoLinee), j, i+(65*passoLinee), j);   //liee orizontali  
          }} 
              for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 75*passoLinee; j<=width; j = j+(100*passoLinee)){
      line(i+(60*passoLinee), j, i+(90*passoLinee), j);   //liee orizontali  
          }} 
    for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 25*passoLinee; j<=width; j = j+(100*passoLinee)){
      line(i+(10*passoLinee), j, i+(40*passoLinee), j);     //liee orizontali  
          }}
    for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 50*passoLinee; j<=width; j = j+(100*passoLinee)){
      line(i+(85*passoLinee), j, i+(115*passoLinee), j);   //liee orizontali  
          }}
  
   stroke(PApplet.parseInt(map(tobj.getScreenY(height), 0, height, 0, 255)));  // colore linee verticali che viariano con la posizione
                                                                 // sull'asse delle X del fiducial   
    for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 125*passoLinee; j<=width; j = j+(100*passoLinee)){
      line(j, i+(60*passoLinee), j, i+(90*passoLinee));     //liee veritcali  
          }}  
              for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 75*passoLinee; j<=width; j = j+(100*passoLinee)){
      line(j, i+(10*passoLinee), j, i+(40*passoLinee));   //liee veritcali  
          }} 
    for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 50*passoLinee; j<=width; j = j+(100*passoLinee)){
     line(j, i+(35*passoLinee), j, i+(65*passoLinee));   //liee veritcali  
          }}

    for( i = 0; i<=width; i = i+(100*passoLinee)){
          for( j = 100*passoLinee; j<=width; j = j+(100*passoLinee)){
      line(j, i+(85*passoLinee), j, i+(115*passoLinee));     //liee veritcali  
          }}
          
        stroke (255); // colore linee diagonali
    for( i = (50*passoLinee); i<=width+(50*passoLinee); i = i+(50*passoLinee)) line(i, 0, 0, i);    // linee diagonali
    for( i = (50*passoLinee); i<=height+(50*passoLinee); i = i+(50*passoLinee))  line(i, width, width, i);   // linee diagonali
}
//////////////////////////////////////////////
//     FINE     SECONDA INTERFACCIA        //
///////////////////////////////////////////// 
     pushMatrix();
     translate(tobj.getScreenX(width),tobj.getScreenY(height)); 
     rotate(tobj.getAngle());
     stroke(1);
     
      if(tobj.getSymbolID() == 0){ // controllo dell'ID del fiducial
           coloreFiducialR = 255; // compendente rossa del colore del fiducial
           coloreFiducialG = 0; // compendente verde del colore del fiducial
           coloreFiducialB = 0; // compendente blu del colore del fiducial
           }
 
 else if( tobj.getSymbolID() == 3){ // controllo dell'ID del fiducial
           coloreFiducialR = 0; // compendente rossa del colore del fiducial
           coloreFiducialG = 255; // compendente verde del colore del fiducial
           coloreFiducialB = 0; // compendente blu del colore del fiducial
           }
 
     fill(coloreFiducialR, coloreFiducialG, coloreFiducialB); // colore del fiducial con le 3 componenti decise appena sopra
     ellipse(0,0,obj_size,obj_size);
     strokeWeight(2);
     stroke(255);
     fill(255);
     line(0, -obj_size/2, 0, 0);
     popMatrix();
     fill(255);
     text(""+tobj.getSymbolID(), tobj.getScreenX(width), tobj.getScreenY(height));
   }
    
}

//////////////////////////////////////////////
//      MESSAGGI OSC DA INVIARE A MAX       //
/////////////////////////////////////////////
public void addTuioObject(TuioObject tobj) {
  OnOff =1;

 OscMessage addObject = new OscMessage("addObject"); // Creazione del messaggio OSC
  addObject.add(tobj.getSessionID());  // Session ID
  addObject.add(tobj.getSymbolID()); // ID
  addObject.add(tobj.getX()); // Coordinata Asse X
  addObject.add(tobj.getY()); // Coordinata Asse Y
  addObject.add(tobj.getAngle()); // Angolo/Rotazione
  addObject.add(OnOff); // Numero di Caduta
  oscP5.send(addObject, myRemoteLocation); // Spedizione del messaggio OSC
}

public void removeTuioObject(TuioObject tobj) {
  OnOff =0;
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
public void updateTuioObject (TuioObject tobj) {
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
public void refresh(TuioTime bundleTime) { 
  redraw();
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "Interfaccia_V_2" });
  }
}
