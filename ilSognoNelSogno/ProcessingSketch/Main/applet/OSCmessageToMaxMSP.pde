int OnOff; // variabile utilizzata per mandare di un messaggio di On o Off del fiducial a Max/MSP

void addTuioObject(TuioObject tobj) { // called when an object is added

   nextInterface(tobj.getSymbolID());
                                                                  
 OscMessage addObject = new OscMessage("addObject"); // Creation of OSC message
  addObject.add(tobj.getSymbolID()); // ID
  addObject.add(tobj.getX()); // Coordinate X axis
  addObject.add(tobj.getY()); // Coordinate Y axis
  addObject.add(tobj.getAngle()); // Angle
  oscP5.send(addObject, myRemoteLocation); // Spedizione del messaggio OSC
}

void removeTuioObject(TuioObject tobj) { // called when an object is removed

  previousInterface(tobj.getSymbolID());              
  
OscMessage removeObject = new OscMessage("removeObject"); // Creation of OSC message
  removeObject.add(tobj.getSymbolID()); // ID
  removeObject.add(tobj.getX()); // Coordinate X axis
  removeObject.add(tobj.getY()); // Coordinate Y axis2
  removeObject.add(tobj.getAngle()); // Angle
  oscP5.send(removeObject, myRemoteLocation); // Spedizione del messaggio OSC
}

void updateTuioObject (TuioObject tobj) { // called when an object is moved
 OscMessage updateObject = new OscMessage("updateObject"); // Creation of OSC message
  updateObject.add(tobj.getSymbolID()); // ID
  updateObject.add(tobj.getX()); // Coordinate X axis
  updateObject.add(tobj.getY()); // Coordinate Y axis
  updateObject.add(tobj.getAngle()); // Angle
  oscP5.send(updateObject, myRemoteLocation); // Spedizione del messaggio OSC
  
     if(tobj.getSymbolID()==4) { if(tobj.getScreenX(width)<=width/2.) linesColorX =  map(tobj.getScreenX(width), 0, width/2, 1, 0);    // riscalamento del colore delle linee sull'asse X dell'interfaccia "Violoncello"
                                 else if(tobj.getScreenX(width)>width/2.) linesColorX =  map(tobj.getScreenX(width), width/2, width, 0, 1);    // riscalamento del colore delle linee sull'asse X dell'interfaccia "Violoncello"
                                 if(tobj.getScreenY(height)<=height/2.) linesColorY =  map(tobj.getScreenY(height), 0, height/2, 1, 0);    // riscalamento del colore delle linee sull'asse X dell'interfaccia "Violoncello"
                                 else if(tobj.getScreenY(height)>height/2.) linesColorY =  map(tobj.getScreenY(height), height/2, height, 0, 1);  } // riscalamento del colore delle linee sull'asse Y dell'interfaccia "Violoncello"
   
    if (tobj.getSymbolID()==5)  { if(tobj.getScreenX(width)<=width/2.) squareColorX =  map(tobj.getScreenX(width), 0, width/2, 1, 0);    // riscalamento del colore delle linee sull'asse X dell'interfaccia "Violoncello"
                                 else if(tobj.getScreenX(width)>width/2.) squareColorX =  map(tobj.getScreenX(width), width/2, width, 0, 1);    // riscalamento del colore delle linee sull'asse X dell'interfaccia "Violoncello"
                                 if(tobj.getScreenY(height)<=height/2.) squareColorY =  map(tobj.getScreenY(height), 0, height/2, 1, 0);    // riscalamento del colore delle linee sull'asse X dell'interfaccia "Violoncello"
                                 else if(tobj.getScreenY(height)>height/2.) squareColorY =  map(tobj.getScreenY(height), height/2, height, 0, 1);  }  
  }
