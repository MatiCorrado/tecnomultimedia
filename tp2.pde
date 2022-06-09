// Corrado Matias 86558/4
// https://www.youtube.com/watch?v=bCBWlHelkYs&ab_channel=MatiasCorrado

color negro = color(0);
int i=0;

void setup(){
size(800,800);
rectMode(RADIUS);
noStroke();
}

void draw(){
translate(width/2,height/2);
background(random(0.255),random(0.255),random(0,255));
for (i=0; i<40; i++){
  rotate(map(mouseX,0,width,PI/2,PI/80));
  translate(0,map(mouseY,0,height,0,10));
  if(i%2 == 0)
    fill (negro);
  else
    fill(random(0.255),random(0.255),random(0,255));
    float radio = (width/3)- i*6.8;
    rect(0,0,radio,radio);
}
}
void keyPressed(){
  if (key == 'r' || key == 'R'){
  i=0;
  mouseX=0;
  mouseY=0;
}
}
