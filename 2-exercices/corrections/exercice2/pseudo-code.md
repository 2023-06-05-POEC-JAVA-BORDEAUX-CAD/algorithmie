ALGORITHME presentation
VARIABLES
  lastname EST_DU_TYPE CHAINE
  firstname EST_DU_TYPE CHAINE
  age EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE lastname
  LIRE firstname
  LIRE age
  AFFICHER "Bonjour " + lastname + " " + firstname + " vous avez " + age + " an(s)."
  // Evaluation de la condition de l'age, il y aura qu'un seul des instructions ci-après qui sera exécuté
  SI age > 18 ALORS
    AFFICHER "Majeur"
  SINON SI age == 18
    AFFICHER "Exactement 18"
  SINON
    AFFICHER "Mineur"
  FIN_SI
 FIN_ALGORITHME