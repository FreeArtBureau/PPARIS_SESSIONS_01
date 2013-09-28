////////////////////////////////////////////////////////////////////////////
//////              |                                                 //////
//////   Sketch 2   |  tracer des valeurs stockées dans un array      //////
//////              |                                                 //////
////////////////////////////////////////////////////////////////////////////


// importation des différentes librairies     
import geomerative.*;

// déclaration des objets et des classes
RShape forme;




void setup() {

  // initialisation du setup
  size(800, 600);
  smooth();
  fill(0);
  noStroke();


  // initialisation des librairies
  RG.init( this );

}



// dessin dans la scène
void draw() {

  background(255);
  Display();

}

