float object_size = 118; // Dimensione Fiducial
float table_size = 760; // Dimensioni sfondo grafico
float scale_factor = 1; // Fattore di riscalamento
PFont font; // Font del testo del fiducial

void fiducial(int ID, float X, float Y, float rotation, int R, int G,int B){ // Valori in ingresso alla funzione

     textFont(font,18*scale_factor);  // Dimensioni del font
     float obj_size = object_size*scale_factor;  // Dimensioni del fiducial
     pushMatrix(); // Salvataggio dei dati del al frame corrente
     translate(X,Y); // Traslazione del fiducial
     rotate(rotation); // Rotazione del fiducial
     stroke(R, G, B); // Scelta del colore del margine del fiducial
     fill(R, G, B); // Scelta del colore del fiducial
     ellipse(0,0,obj_size,obj_size); // Generazione ellisse
     strokeWeight(3); // Dimensioni della freccia che indica il verso
     stroke(255*rotation); // Colore del margine dellla freccia che indica il verso
     fill(255*rotation); // Colore della freccia che indica il verso
     line(0, -obj_size/2, 0, 0); // Generazione freccia che indica il verso
     popMatrix(); // Nuove coordinate e verso del fiducial
     fill(255); // Colore del font
     text(""+ID, X+50, Y); // Scrittura dell'ID sul fiducial
}
