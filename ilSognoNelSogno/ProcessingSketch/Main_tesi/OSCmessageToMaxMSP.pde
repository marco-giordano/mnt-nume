void addTuioObject(TuioObject tobj) { // Metodo richiamato quando viene aggiunto un fiducial

   nextGraphicBackground(tobj.getSymbolID());
                                                                  
 OscMessage addObject = new OscMessage("addObject"); // Creazione del messaggio OSC
  addObject.add(tobj.getSymbolID()); // ID
  addObject.add(tobj.getX()); // Coordinate asse X
  addObject.add(tobj.getY()); // Coordinate asse Y
  addObject.add(tobj.getVerso()); // Verso
  oscP5.send(addObject, myRemoteLocation); // Spedizione del messaggio OSC
}

void removeTuioObject(TuioObject tobj) { // Metodo richiamato quando viene rimosso un fiducial

  previousGraphicBackground(tobj.getSymbolID());              
  
OscMessage removeObject = new OscMessage("removeObject"); // Creazione del messaggio OSC
  removeObject.add(tobj.getSymbolID()); // ID
  removeObject.add(tobj.getX()); // Coordinate asse X
  removeObject.add(tobj.getY()); // Coordinate asse Y
  removeObject.add(tobj.getVerso()); // Verso
  oscP5.send(removeObject, myRemoteLocation); // Spedizione del messaggio OSC
}

void updateTuioObject (TuioObject tobj) { // Metodo richiamato quando viene aggiunto un fiducial

 if(tobj.getSymbolID()==4) { if(tobj.getScreenX(width)<=width/2.) linesColorX =  map(tobj.getScreenX(width), 0, width/2, 1, 0); // Scalamento del colore delle linee sull'asse X dello sfondo grafico n. 2
                                 else if(tobj.getScreenX(width)>width/2.) linesColorX =  map(tobj.getScreenX(width), width/2, width, 0, 1); // Scalamento del colore delle linee sull'asse X dello sfondo grafico n. 2
                                 if(tobj.getScreenY(height)<=height/2.) linesColorY =  map(tobj.getScreenY(height), 0, height/2, 1, 0); // Scalamento del colore delle linee sull'asse Y dello sfondo grafico n. 2
                                 else if(tobj.getScreenY(height)>height/2.) linesColorY =  map(tobj.getScreenY(height), height/2, height, 0, 1);  } // Scalamento del colore delle linee sull'asse Y dello sfondo grafico n. 2
   
 if (tobj.getSymbolID()==5)  { if(tobj.getScreenX(width)<=width/2.) squareColorX =  map(tobj.getScreenX(width), 0, width/2, 1, 0); // Scalamento del colore delle linee sull'asse X dello sfondo grafico n. 3
                               else if(tobj.getScreenX(width)>width/2.) squareColorX =  map(tobj.getScreenX(width), width/2, width, 0, 1); // Scalamento del colore delle linee sull'asse X dello sfondo grafico n. 3
                               if(tobj.getScreenY(height)<=height/2.) squareColorY =  map(tobj.getScreenY(height), 0, height/2, 1, 0); // Scalamento del colore delle linee sull'asse Y dello sfondo grafico n. 3
                               else if(tobj.getScreenY(height)>height/2.) squareColorY =  map(tobj.getScreenY(height), height/2, height, 0, 1);  } // Scalamento del colore delle linee sull'asse Y dello sfondo grafico n. 3

 OscMessage updateObject = new OscMessage("updateObject"); // Creazione del messaggio OSC
  updateObject.add(tobj.getSymbolID()); // ID
  updateObject.add(tobj.getX()); // Coordinate asse X
  updateObject.add(tobj.getY()); // Coordinate asse Y
  updateObject.add(tobj.getVerso()); // Verso
  oscP5.send(updateObject, myRemoteLocation); // Spedizione del messaggio OSC
  }
  
  
  
