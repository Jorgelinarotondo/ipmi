PImage Maquinacoser;
void setup(){
size(800,400);
background(255);
Maquinacoser= loadImage("MaquinadeCoser.jpeg");
Maquinacoser.resize(400,300);

}
void draw(){
  background(200);
image(Maquinacoser,0,0);
println(mouseX);
println(mouseY);
strokeWeight(2);
stroke(0);
fill(255);
rect(447,47,320,235,10);
fill(0);
rect(542,120,120,75,10);
fill(0);
rect(446,152,110,43,10);
strokeWeight(12);
stroke(250,220,10);
line(110+ 400,53,110+400,130);
strokeWeight(0);
fill(250,220,10);
circle(590,80,50);
circle(660,80,50);
strokeWeight(5);
ellipse(710,80,17,7);
ellipse(719,95,17,7);
ellipse(728,110,17,7);
ellipse(734,125,17,7);
ellipse(740,140,17,7);
ellipse(746,155,17,7);
ellipse(750,170,17,7);
ellipse(750,185,17,7);
strokeWeight(10);
stroke(240);
rect(675,184,40,40,10);
fill(255,0,0);
text("Janome",460,90);
fill(150);
text("selector",534,59);
text("Largo",618,59);
text("2032X",680,242);
stroke(100);
line(510,160,510,175);
strokeWeight(1);
stroke(0);
line(600,221,600,281);
line(468,196,468,220);
line(469,221,600,222);
strokeWeight(7);
stroke(250);
line(512,68,512,88);
strokeWeight(2);
stroke(0);
line(503,50,503,134);
line(517,50,517,134);
fill(150);
strokeWeight(0);
rect(495,187,30,30,10);
strokeWeight(2);
stroke(120);
bezier(693,81,706,101,727,143,735,187);
}

void mouseMoved(){
  line(mouseX,0,mouseY,0);
  line(0,mouseX,0,mouseY);
}
