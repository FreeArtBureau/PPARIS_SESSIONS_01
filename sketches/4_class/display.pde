void Display(){
 
  dessin();
  
    // déclaration de la forme
    RShape forme = new RShape();
    
    // point de départ de la forme
    forme.addMoveTo( pts[0][0], pts[0][1] );
    
    // tant qu'il y a des courbes dans l'array on trace :
    for (int bV=0; bV < 10; bV++) {
       
       // (simplifié) > si les ancres se situent sur les points, alors ce n'est pas une courbe mais une droite
       // ce qui permet un tracé plus propre à l'export
       if (pts[bV][2] == pts[bV][4] && pts[bV][3] == pts[bV][5] ){
          forme.addLineTo( pts[bV][4], pts[bV][5]);
        }
        
        // sinon on trace la courbe  
        else {
          forme.addBezierTo( pts[bV][0], pts[bV][1], pts[bV][2], pts[bV][3], pts[bV][4], pts[bV][5]);
        }
          
    }
    
    // on ferme la forme puis on la dessine
    forme.addClose();
    forme.draw();
         
}
