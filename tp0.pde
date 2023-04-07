//Julian Rodriguez Diaz
//Comision 2
//91443/6
//tp0
PImage panda;
void setup(){
size(800 , 400);
panda = loadImage("panda.jpg");
}
void draw(){
background(125);
image(panda, 0,0);
fill(0);
circle(480,50,120);
circle(715,50,120);
fill(0);
circle(600,400,400);
fill(240);
circle(600,165,325);
fill(0);
circle(530,180,100);
circle(665,180,100);
fill(240);
circle(600,270,170);
circle(540,180,10);
circle(650,180,10);
fill(0);
ellipse(600,260,100,50);
rect(565,310,75,0);
line(565,310,540,280);
}
