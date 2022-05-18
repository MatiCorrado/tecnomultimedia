int Ar, Ab, D, I, fc, fc1, T;
boolean botton = false;
PFont Font;
PImage inicio, fondo, marvel, titulo, galaxia, strange, wanda, america, americaC, wong, BS, Prod, ET, ET2;
void setup() {
  size(800, 800);
  inicio = loadImage("inicio.png");
  galaxia = loadImage("red_galaxy.png");
  marvel = loadImage("Marvel_Cinematic_Universe.png");
  fondo = loadImage("fondo.png");
  titulo = loadImage("Doctor_Strange_2.png");
  strange = loadImage("dr. Strange.png");
  wanda = loadImage("wanda.png");
  america = loadImage("America Chavez.png");
  americaC = loadImage("America Chavez comic.png");
  wong = loadImage("Wong.png");
  BS = loadImage("BANDA SONORA.png");
  Prod = loadImage("Productores.png");
  ET = loadImage("Equipo tecnico.png");
  ET2 = loadImage("empresas.png");
  Font = loadFont("GillSans-UltraBold-32.vlw");
}
void draw() {
  fc1= frameCount--;
  background(85, 8, 8);  
  println(frameCount);
  image (inicio, 0, 0, width, height);
  strokeWeight(3);
  fill (85, 8, 8);
  ellipse (400, 700, 200, 120);
  fill(255);
  textSize(32);
  text ("Inicio", 360, 710);
  if (botton==true) {
    image (fondo, 0, 0, width, height);
    fc=frameCount++;
    Ar --;
    Ab ++;
    D ++;
    I --;
    T++;
    if (fc< 75 || fc>1310) {
      image(fondo, 0, 0, width, height);
    }
    if (fc>20 && fc<70) {
      image(marvel, 0, 0, width, height);
    }
    if (fc>115 && fc<615) {
      image(galaxia, 0, 0);
    }
    if (fc>70 && fc <120) {
      image(titulo, 0, 0, width, height);
    } else if (fc>115 && fc<215) {
      image(strange, 150, 150, width-150, height-150);
      fill(255, 255, 255, T-50);
      textFont(Font);
      textSize(32);
      text("BENEDICT CUMBERBATCH\nPersonaje\nDr. Stephen Strange", 0+D, 80);
    } else if (fc>215 && fc<315) {
      image(wanda, 200, 200, width-200, height-200);
      fill(255, 255, 255, T-150);
      text("ELIZABETH OLSEN\nPersonaje\nWanda Maximoff/Scarlet Witch", -160 +D, 80);
    } else if (fc>315 && fc<415) {
      image(america, 350, 300, width-200, height-200);
      image(americaC, -150, 0, width-200, height-200);
      fill(255, 255, 255, T-250);
      textSize(32);
      text("Personaje\nAmerica Chavez", -60 + D, 150);
      text("XOCHITL GOMEZ", 500 + I, 700);
    } else if (fc>415 && fc<515) {
      image(wong, -20, 0, width, height);
      fill(255, 255, 255, T-350);
      textSize(32);
      text("Benedict Wong\n \n \n personaje\n Wong", 460, -300+Ab);
    }
    if (fc>515 && fc<615) {
      image(BS, 0, 0, width, height);
      fill(255, 255, 255, T-400);
      textSize(32);
      text("Compositor\n \n \nDanny Elfman", 500, -400+Ab);
      text("Supervisor musical\n \n \nDave Jordan", 50, -400+Ab);
    }
    if (fc>615 && fc<715) {
      image(Prod, 0, 0, width, height);
      fill(255, 255, 255, T-500);
      textSize(32);
      text("Kevin Feige\n\nLouis D'Esposito\n\nVictoria Alonso\n\nEric Hauserman Carroll\n\nScott Derrickson\n\nJamie Christopher", 50, 1000+Ar);
    }
    if (fc>715 && fc<1015) {
      image(ET, 0, 0, width, height);
      fill(255, 255, 255, T-650);
      textSize(32);
      text("Supervisor de los efectos visuales\nJanek Sirrs\n\nDirector de fotografía\nJohn Mathieson\n\nAtrezzista\nJohn Bush", 50, 1000+Ar);
      text("Decorador\nJohn Bush\n\nDirector de reparto\nSarah Finn\n\nMontador jefe\nBob Murawski\n\nMontador jefe\nTia Nolan", 50, 1400+Ar);
    }
    if (fc>1015 && fc<1315) {
      image(ET2, 0, 0, width, height);
      fill(255, 255, 255, T-950);
      textSize(32);
      text("Supervisor de los efectos visuales\nChris Corbould\n\nDecorador\nCharles Wood (II)\n\nDirector artístico\nThomas Brown (VI)", 50, 1200+Ar);
      text("Director artístico\nJames Peter Blackmon\n\nDirector artístico\nMike Stallion\n\nDirector artístico\nMark Swain", 50, 1650+Ar);
    }
    if (fc > 1315) {
      textSize(32);
      fill(random(100, 255), 0, 0);
      text("Press R to Restart", 200, height/2);
    }
  }
}
void keyPressed() {
  if (key == 'r' || key == 'R') {
    frameCount = 0;
    botton=false;
  }
}
void mouseClicked() {
  if (dist(mouseX, mouseY, 400, 700) < 75) {
    botton=true;
  }
}
