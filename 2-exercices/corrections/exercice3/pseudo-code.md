ALGORITHME operations_mathematiques 
VARIABLES
  nb1 EST_DU_TYPE NOMBRE
  nb2 EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE nb1
  LIRE nb2
  AFFICHER "Résultat de l'addition : "
  AFFICHERCALCUL nb1 + nb2
  AFFICHER "Résultat de la soustraction : "
  AFFICHERCALCUL nb1 - nb2
  AFFICHER "Résultat de la multiplication : "
  AFFICHERCALCUL nb1 * nb2
SI (nb2 == 0) ALORS
  DEBUT_SI
    AFFICHER "Division par 0 impossible."
  FIN_SI
SINON
  DEBUT_SINON
    AFFICHER "Résultat de la division : "
    AFFICHERCALCUL nb1 / nb2
  FIN_SINON
FIN_ALGORITHME