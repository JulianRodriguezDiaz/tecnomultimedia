//TP1
//Rodriguez Diaz Julian
//Legajo: 91443/6
//Comision 2

PImage IO;
void setup(){
  size(800, 400);
}
void draw(){
  background(235);
  IO = loadImage("IlusionOptica1.jpg");
  image(IO,50,50);
  strokeWeight(5);
  stroke(130);
  for(int a=0; a<width; a+=48) {
      for(int b=0; b<height; b+=42) {
  rect(a,b,800,400);
       for(int c=0; c<width; c+=48) {
                for(int d=0; d<height; d+=42) {
                  circle(c,d,5);
                    
                    
                  
image(IO,0,0 );

                }
        }
 }
  }
  }
