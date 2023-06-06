let classe = [];
let eleve = [];

function calculMoyenneEleve(eleve) {
  let moyenne = 0;
  for (i = 0; i < eleve.length; i++) {
    moyenne += eleve[i];
  }
  return moyenne / eleve.length;
}

function calculMoyenneClasse(classe) {
  let moyenne = 0;
  for (i = 0; i < classe.length; i++) {
    moyenne += calculMoyenneEleve(classe[i]);
  }
  return moyenne / classe.length;
}

function calculMoyenne(classe, matiere) {
  let moyenne = 0;
  for (i = 0; i < classe.length; i++) {
    moyenne += classe[i][matiere];
  }
  return moyenne / classe.length;
}

function verifierNote(math, francais, anglais, physique, chimie) {
  if (
    math < 21 &&
    math > -1 &&
    francais < 21 &&
    francais > -1 &&
    anglais < 21 &&
    anglais > -1 &&
    physique < 21 &&
    physique > -1 &&
    chimie < 21 &&
    chimie > -1
  ) {
    return true;
  } else {
    alert("votre note n'est pas valide");
    return false;
  }
}

function demanderNote(matiere) {
  let note = parseInt(prompt(`Rentrez votre note de ${matiere}:`));
  if (note > -1 && note < 21) {
    return note;
  } else {
    alert("Votre note n'est pas valide");
    return false;
  }
}

do {
  for (let index = 0; index < 1; index++) {
    let math = demanderNote("mathématiques");
    let francais = demanderNote("français");
    let anglais = demanderNote("anglais");
    let physique = demanderNote("physique");
    let chimie = demanderNote("chimie");
    let eleve = [math, francais, anglais, physique, chimie];
    console.log(calculMoyenneEleve(eleve));
  }

  let demande = prompt("voulez vous ajouter un élève ? oui ou non");
  classe.push(eleve);
  let moyenneMath = calculMoyenne(classe, 0);
  let moyenneFrancais = calculMoyenne(classe, 1);
  let moyenneAnglais = calculMoyenne(classe, 2);
  let moyennePhysique = calculMoyenne(classe, 3);
  let moyenneChimie = calculMoyenne(classe, 4);
  console.log("la moyenne de math est de " + moyenneMath);
  console.log("la moyenne de francais est de " + moyenneFrancais);
  console.log("la moyenne d'anglais est de " + moyenneAnglais);
  console.log("la moyenne en physique est de " + moyennePhysique);
  console.log("la moyenne en chimie est de" + moyenneChimie);
} while (demande === "oui");

console.log("fini");
