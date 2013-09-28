class Serif { 
  int COEEFx, BV, posX, posY;

  // déclaration de la classe avec 4 paramètres :
  // coeffX qui détermine si le serif va vers la gauche ou la droite
  // BV qui indique à partir de quelle courbe celui-ci doit être effectif
  // x pour déterminer la position x de celui-ci
  // y pour déterminer la position y de celui-ci

  Serif (int coeffX, int bV, int x, int y) { 
    COEEFx = coeffX;
    BV = bV; 
    posX = x;
    posY = y;
  } 

  // affichage de la classe
  void update() { 

    // si le serif est de type gauche > droite (donc positif), alors :
    if (COEEFx == 1 ) {

      pts[BV][4] = posX ;
      pts[BV][5] = posY - hauteur ;

      pts[BV+1][0] = posX ;
      pts[BV+1][1] = posY - hauteur ;
      pts[BV+1][2] = posX + 1 + largeur ;
      pts[BV+1][3] = posY - hauteur - mediane * hauteur ;
      pts[BV+1][4] = posX + 1 + largeur ;
      pts[BV+1][5] = posY - hauteur - mediane * hauteur ;

      pts[BV+2][0] = posX + 1 + largeur ;
      pts[BV+2][1] = posY - hauteur - mediane * hauteur ;
      pts[BV+2][2] = posX + 1 + largeur ;
      pts[BV+2][3] = posY + 1  ;
      pts[BV+2][4] = posX + 1 + largeur ;
      pts[BV+2][5] = posY + 1  ;
    }

    // si le serif est de type droite > gauche (donc négatif), alors : 
    else {

      pts[BV][4] = posX - largeur ;
      pts[BV][5] = posY ;

      pts[BV+1][0] = pts[BV][4] ;
      pts[BV+1][1] = pts[BV][5] ;
      pts[BV+1][2] = pts[BV+1][4] ;
      pts[BV+1][3] = pts[BV+1][5] ;
      pts[BV+1][4] = posX - largeur ;
      pts[BV+1][5] = posY - 1 - hauteur - mediane * hauteur ;

      pts[BV+2][0] = pts[BV+1][4] ;
      pts[BV+2][1] = pts[BV+1][5] ;
      pts[BV+2][2] = pts[BV+2][4] ;
      pts[BV+2][3] = pts[BV+2][5]  ;
      pts[BV+2][4] = posX - 1 ;
      pts[BV+2][5] = posY - 1 - hauteur ;
    }
  }
}

