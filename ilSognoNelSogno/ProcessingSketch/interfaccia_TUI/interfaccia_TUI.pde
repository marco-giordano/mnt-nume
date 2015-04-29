
int x1,x2,y1,y2;
float cursore = 0;
float coloreLinea;
float coloreLineax;
float coloreLineay;
int contatore = 0;
int i,j,jj, k;
boolean[] cambio = new boolean[3]; 

int dimSf = 12; //dimensione sfere seconda interfaccia
int dimQ2 = 60; //dimensione quadrati seconda interfaccia
int dimQ3 = 40; //dimensione quadrati terza interfaccia



void setup() {
  frameRate(50);
  size(640, 480);
    background(1);
}


void draw() {
  
  
  /////////////////////////////////////////
  //          PRIMA INTERFACCIA          //
  /////////////////////////////////////////
  
  
  contatore=contatore+1;
  
  
    if (contatore<500){
  int i;
  stroke(255);
      fill(0);
    }

  /////////////////////////////////////////
  //          SECONDA INTERFACCIA        //
  /////////////////////////////////////////
  
  if (contatore>500 && contatore<1000){
        stroke (255);
        
        
// linee diagonali
//emergenza all'ingresso del fiducial piano.
    for( i = 50; i<=width+50; i = i+50) line(i, 0, 0, i);
    for( i = 50; i<=height+50; i = i+50)  line(i, width, width, i);

 //liee orizontali  
 // tati in input da parte del fiducial elaboratore piano.
   stroke(int(map(mouseY, 0, height, 0, 255)));
       
        for( i = 0; i<width; i = i+100){
          for( j = 0; j<width; j = j+100){
      line(i+35, j, i+65, j);    
          }} 
          
              for( i = 0; i<width; i = i+100){
          for( j = 75; j<width; j = j+100){
      line(i+60, j, i+90, j);    
          }} 
   
    for( i = 0; i<width; i = i+100){
          for( j = 25; j<width; j = j+100){
      line(i+10, j, i+40, j);    
          }}
          
    for( i = 0; i<width; i = i+100){
          for( j = 50; j<width; j = j+100){
      line(i+85, j, i+115, j);    
          }}
 
 //liee veritcali  
 // tati in input da parte del fiducial elaboratore piano.
  stroke(int(map(mouseX, 0, width, 0, 255)));
    
    for( i = 0; i<width; i = i+100){
          for( j = 75; j<width; j = j+100){
      line(j, i+10, j, i+40);    
          }}
          
 for( i = 0; i<width; i = i+100){
          for( j = 50; j<width; j = j+100){
      line(j, i+35, j, i+65);    
          }}     
          
    for( i = 0; i<width; i = i+100){
          for( j = 125; j<width; j = j+100){
      line(j, i+60, j, i+90);    
          }}  
          
    for( i = 0; i<width; i = i+100){
          for( j = 100; j<width; j = j+100){
      line(j, i+85, j, i+115);    
          }}
     } 
    
  
  /////////////////////////////////////////
  //           TERZA INTERFACCIA         //
  /////////////////////////////////////////
  if (contatore>1000 && contatore<1500){
// emergenza all'ingresso del fiducial piano.
    background(1);

// generatore linee
    stroke (153);
    strokeWeight(10);
    for(i = dimQ2; i<height; i=i+dimQ2) line (0, i, width, i);
    for(i = dimQ2; i<width; i=i+dimQ2) line (i, 0, i, height);

// generatore sfere
    for(int ix = dimQ2; ix<width; ix=ix+dimQ2){
    for(int iy = dimQ2; iy<width; iy=iy+dimQ2) {
         strokeWeight(0);    
      fill(255);
       ellipse (ix, iy, dimSf, dimSf);
     }}
    
    
    
  }
  
 else if (contatore>1500){  
     
    background(1);
   strokeWeight(0);
// movimento cursore e decisione di quali quadrati devono apparire
 coloreLineax =  map(mouseX, 0, width, 0, 1);
 coloreLineay = map(mouseY, 0, height, 0, 1);
 coloreLinea = (coloreLineax * coloreLineay)*153;
  
for(y1=0; y1<height; y1=y1+dimQ3*2){
  for(y2=dimQ3; y2<height; y2=y2+dimQ3*2){
    for(x1=dimQ3/2; x1<width; x1=x1+dimQ3*2){
      for(x2=dimQ3; x2<width; x2=x2+(dimQ3*2)){

   fill(coloreLineax*255);
  rect(x1, y1, dimQ3, dimQ3);
     fill(coloreLineay*255);
  rect(x2, y2, dimQ3, dimQ3);
      }}
      
  stroke(153);
  line (0, y1, width, y1);
  line (0, y2, width, y2);
  
  
  }
}  
}
}

  

