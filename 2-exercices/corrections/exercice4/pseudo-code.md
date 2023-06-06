ALGORITHME operations_logiques
  VARIABLES
    nb EST_DE_TYPE NOMBRE
  DEBUT_ALGORITHME
    LIRE nb
    SI (nb >= 0 ET nb <= 50) ALORS
      AFFICHER "Nombre compris entre 0 et 50"
    SINON SI (nb > 50 ET nb <= 75)
      AFFICHER "Nombre compris entre 51 et 75"
    SINON SI (nb < 0 OU nb > 75) // Un simple sinon suffit
      AFFICHER "Nombre supérieur à 75 ou inférieur à 0"
FIN_ALGORITHME