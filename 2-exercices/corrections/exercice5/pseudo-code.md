ALGORITHME boucle_nombre
VARIABLES
  nb EST_DE_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE nb
  // Ici après on vérifie et on fait en sorte de lui redemander de saisir à nouveau si le nombre n'est pas compris entre 0 et 10 inclus
  TANT_QUE (nb < 0 OU nb > 10) FAIRE 
  // Attention à l'opérateur logique ici, on ne peut pas être à la fois inférieur à 0 ET supérieur à 0.
    AFFICHER "Nombre compris entre 0 et 10 inclus"
    LIRE nb
  FIN_TANT_QUE
  AFFICHER 'Vous avez saisi ' + nb
FIN_ALGORITHME