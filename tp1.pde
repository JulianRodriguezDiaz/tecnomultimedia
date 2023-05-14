//TP1
//Rodriguez Diaz Julian
//Legajo: 91443/6
//Comision 2

String estado;
int c; //contador
PImage menu;
PImage p1;
PImage p2;
PImage p3;
PImage fin;
PImage cursor;
PImage lobomaincra;
PFont font;

void setup(){
 size (640, 480); 
 font = loadFont("Impact-48.vlw");
 textFont(font);
 menu = loadImage("menu.jpg");
 p1 = loadImage("p1.jpg");
 p2 = loadImage("p2.jpg");
 p3 = loadImage("p3.jpg");
 fin = loadImage("fin.jpg");
 cursor = loadImage("cursor.png");
 lobomaincra = loadImage("lobomaincra.jpg");
textAlign (CENTER , CENTER);
textSize (50);

 estado = "menu";

frameRate (60);
}

void draw() {
background (0);
fill(mouseX, 100, mouseY);

//MAQUINA DE ESTADOS--;

if( estado == "menu") {
  image(menu, 0,0);
textSize(100);
text( "LOBOS" , width/2,200 );
circle( width/2, height/4*3, 50);
image(cursor,width/2, height/4*3 );

//
} else if (estado.equals("p1")) {
  image(p1,0,0);
fill(mouseX,100, mouseY);
textSize(25);
text( "Los Lobos son mamiferos" , 180, 100 );
text( "que pertenecen a la familia" , 180, 140 );
text( "de los canidos" , 180, 180 );
text("Son animalees sociales que", 180, 220);
text("viven en grupos llamados", 180, 260);
text("MANADAS, los cuales estan", 180, 300);
text("liderados por una pareja", 180, 340);
text("reproductora", 180,380);
c++; // suma 1 per frame
if ( c >= 300 ) { // 60fps * 5seg = 300
estado = "p2";
c = 0; // RESET DE VARIABLE CONTADOR
}
//
} else if (estado.equals("p2")) {
  image(p2,0,0);
  image(lobomaincra, 250,160);
  fill(mouseX,100,mouseY);
textSize(25);
text( "Los lobos tiene un cuerpo delgado y musculoso," , width/2, 20 );
text("con una cabeza grande y afilada. Su pelaje es espeso", width/2, 60);
text("y puede variar en color desde el gris al marron,", width/2, 100);
text("con diferentes tonalidades en distintas partes del Mundo", width/2, 380);
text("Los lobos tienen patas largas y fuertes, adaptadas", width/2, 420);
text("para correr y cazar presas.", width/2, 460);
//
c++; // suma 1 per frame
if ( c >= 600 ) { // 60fps * 10seg = 600
estado = "p3";
c = 0;
}
} else if (estado.equals("p3")) {
  image(p3,0,0);
  fill(mouseX, 100 ,mouseY);
textSize(25);
text( "Los lobos son animales" , 490, 100);
text("depredadores y su dieta", 490, 140);
text("consiste principalmente", 490, 180);
text("en carne de otros animales", 490, 220);
text("Los lobos cazan en grupo,", 490, 260);
text("utilizando tacticas de", 490, 300);
text("caza coordinadas para",490,340);
text("derribar a sus presas",490,380);
//
c++; // suma 1 per frame
if ( c >= 300 ) { // 60fps * 5seg = 300
estado = "fin";
}
} else if (estado.equals("fin")) {
  image(fin,0,0);
  textSize(100);
text( "FIN" , width/2, 200 );
circle( width/2, height/4*3, 50);
image(cursor,width/2, height/4*3 );

} 
}
void mousePressed(){
if ( estado.equals("menu") ){
if (dist (width/2, height/4*3, mouseX, mouseY) < 50/2) {
 estado = "p1";
}
}
if ( estado.equals("fin") ) {
if (dist (width/2, height/4*3, mouseX, mouseY) < 50/2) {
estado = "menu";
}
}
}
