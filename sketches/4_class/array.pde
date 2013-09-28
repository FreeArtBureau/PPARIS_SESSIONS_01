// déclaration de l'array avec deux paramètres : id courbe + id point
float pts[][] = new float[10][6];


// array pour la lettre "l"
void dessin() {

  // A //
  pts[0][0] = pts[9][4] ;
  pts[0][1] = pts[9][5] ;
  pts[0][2] = pts[0][4] ;
  pts[0][3] = pts[0][5] ;
  pts[0][4] = 425 ;
  pts[0][5] = 90 ;

  // B //
  pts[1][0] = pts[0][4] ;
  pts[1][1] = pts[0][5] ;
  pts[1][2] = pts[1][4] ;
  pts[1][3] = pts[1][5] ;
  S1 = new Serif( 1, 1, 425, 485 );
  S1.update();

  // C //
  // D //

  // E //
  pts[4][0] = pts[3][4] ;
  pts[4][1] = pts[3][5] ;
  pts[4][2] = pts[4][4] ;
  pts[4][3] = pts[4][5] ;
  S2 = new Serif( -1, 4, 375, 486 );
  S2.update();

  // F //
  // G //

  // H //
  pts[7][0] = pts[6][4] ;
  pts[7][1] = pts[6][5] ;
  pts[7][2] = pts[7][4] ;
  pts[7][3] = pts[7][5] ;
  pts[7][4] = 376 ;
  pts[7][5] = 91 + hauteur ;

  // I //
  pts[8][0] = pts[7][4] ;
  pts[8][1] = pts[7][5] ;
  pts[8][2] = pts[8][4] ;
  pts[8][3] = pts[8][5] ;
  pts[8][4] = 375 - largeur ;
  pts[8][5] = 91 + hauteur + mediane * hauteur ;

  // J //
  pts[9][0] = pts[8][4] ;
  pts[9][1] = pts[8][5] ;
  pts[9][2] = pts[9][4] ;
  pts[9][3] = pts[9][5] ;
  pts[9][4] = 375 - largeur ;
  pts[9][5] = 90 ;
}

