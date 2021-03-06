/**
* Example on Bsc usage. 
*/

Bsc216 bsc=new Bsc216() ;
int safeindex=1;

void setup() {
  fullScreen(P2D);
  background(255);
  
  smooth(4);
  frameRate(1);
  textSize(70);
}

void draw() {
  if(safeindex>108)safeindex=1;
  fill(bsc.scolor(safeindex++));
  
  text("Monitor- 216 Safe Colors ", 10,100) ;
  rect(width/2,160,width/2+250,240);
  
  for(int i=1;i<6;i++){
  fill(bsc.scolor(safeindex++));
  ellipse(i*50,300,50,150);
  } 
  
  fill(bsc.scolor(safeindex++));
  rect(width/2,890,width/2+300,920);
  text("" +safeindex ,width-180,height/2);
  
  for(int i=1;i<7;i++){
    int v=bsc.scolor(safeindex++) ;
    fill(v);
    ellipse(i*41,690,40, 690);
    
   } 
   
   for(int i=6;i<16;i++){
    fill(bsc.scolor(safeindex+i)) ;
    ellipse(i*60,height-250,40, height-140);
   } 
   
}
