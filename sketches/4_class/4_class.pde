////////////////////////////////////////////////////////////////////////////
//////              |                                                 //////
//////   Sketch 4   |  ajouter des classes pour les serifs            //////
//////              |                                                 //////
////////////////////////////////////////////////////////////////////////////


// importation des différentes librairies     
import geomerative.*;
import controlP5.*;

// déclaration des objets et des classes
RShape forme;
ControlP5 cp5;
Serif S1, S2;



void setup() {

  // initialisation du setup
  size(800, 600);
  smooth();
  fill(0);
  noStroke();


  // initialisation des librairies
  RG.init( this );
  cp5 = new ControlP5(this);


  // ajout de sliders

    // slider largeur
    cp5.addSlider("largeur")
    .setPosition(550, 50)
    .setSize(200, 20)
    .setRange(-20, 100)
    .setValue(0)
    ;

  // css label slider
  cp5.getController("largeur").getValueLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0).setColor(0);
  cp5.getController("largeur").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0).setColor(0);


  // slider hauteur
  cp5.addSlider("hauteur")
  .setPosition(550, 100)
  .setSize(200, 20)
  .setRange(-20, 100)
  .setValue(0)
  ;

  // css label slider
  cp5.getController("hauteur").getValueLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0).setColor(0);
  cp5.getController("hauteur").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0).setColor(0);


  // slider mediane
  cp5.addSlider("mediane")
  .setPosition(550, 150)
  .setSize(200, 20)
  .setRange(-1, 0.5)
  .setValue(0)
  ;

  // css label slider
  cp5.getController("mediane").getValueLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0).setColor(0);
  cp5.getController("mediane").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0).setColor(0);
}



// dessin dans la scène
void draw() {

  background(255);
  Display();

}

