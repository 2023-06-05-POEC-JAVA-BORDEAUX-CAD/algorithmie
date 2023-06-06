const matières = ["Maths", "Français", "Anglais", "Physique", "Chimie"];
let note = 0;
let eleves = [];

function noteEleve() {
  let arrayNote = [];
  for (let i = 0; i < 5; i++) {
    let notedelEleve;
    do {
      notedelEleve = parseInt(
        prompt(`Saisissez la note de ${matières[i]} de l'élève`)
      );
    } while (!(notedelEleve >= 0 && notedelEleve <= 20));
    arrayNote.push(notedelEleve);
  }
  return arrayNote;
}

function moyenneEleve(eleves) {
  let y = [];
  for (let i = 0; i < eleves.length; i++) {
    let x = eleves[i].reduce((a, b) => a + b, 0) / matières.length;
    y.push(x);
  }
  return y;
}

function moyenneMatiere(eleves) {
  let moymatieres = [];
  for (let i = 0; i < matières.length; i++) {
    let summatiere = [];
    for (let j = 0; j < eleves.length; j++) {
      summatiere.push(eleves[j][i]);
    }
    let x = summatiere.reduce((a, b) => a + b, 0) / eleves.length;
    moymatieres.push(x);
  }
  return moymatieres;
}

function moycommente(moy) {
  for (let i = 0; i < moy.length; i++) {
    if (moy[i] < 5) {
      moy[i] = `${moy[i]} : Très insuffisant `;
    } else if (moy[i] < 10) {
      moy[i] = `${moy[i]} : Peu mieux faire `;
    } else if (moy[i] < 12) {
      moy[i] = `${moy[i]} : Encouragements `;
    } else if (moy[i] < 16) {
      moy[i] = `${moy[i]} : Compliments `;
    } else {
      moy[i] = `${moy[i]} : Félicitations `;
    }
  }
  return moy;
}

while (note != -1) {
  note = parseInt(
    prompt(
      "Souhaitez vous saisir les notes d'un elève ?(Saisir n'importe quelle touche pour oui, -1 pour arrêter la saisie)"
    )
  );
  if (note != -1) {
    eleves.push(noteEleve());
  } else {
    console.log(
      `La moyenne de chaque élève est de ${moycommente(moyenneEleve(eleves))}`
    );
    console.log(
      `La moyenne de chaque matière est de ${moyenneMatiere(eleves)}`
    );
  }
}
