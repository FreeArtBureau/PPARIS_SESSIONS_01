////////////////////////////////////////////////////////////////////////////
//////              |                                                 //////
//////   Sketch 1   |  tracer une forme avec des courbes de Bézier    //////
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

  // déclaration de la forme
  forme = new RShape();

  // placement du prmeier point de la forme
  forme.addMoveTo( 224, 134 );

  forme.addLineTo ( 358, 172 );
  forme.addBezierTo ( 319, 215, 347, 245, 369, 265 );
  forme.addBezierTo ( 379, 245, 376, 233, 361, 231 );
  forme.addLineTo ( 360, 227 );
  forme.addLineTo ( 408, 204 );
  forme.addBezierTo ( 430, 218, 434, 242, 424, 256 );
  forme.addBezierTo ( 460, 233, 452, 203, 413, 173 );
  forme.addLineTo ( 552, 109 );
  forme.addBezierTo ( 648, 252, 645, 416, 423, 491 );
  forme.addBezierTo ( 460, 376, 450, 341, 414, 342 );
  forme.addBezierTo ( 378, 342, 383, 385, 415, 448 );
  forme.addBezierTo ( 232, 447, 129, 341, 224, 134 );

  // on ferme la forme
  forme.addClose();
}



// dessin dans la scène
void draw() {

  background(255);

  // on dessine la forme
  forme.draw();

}

