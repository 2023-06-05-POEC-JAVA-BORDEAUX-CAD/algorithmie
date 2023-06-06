let DividendTotal = 0;
let sommeTotal = 0;
let moyenneTotal = 0;
let moyenneEleve = 0;
do {
  entreNote = prompt("Voulez-Vous entrer les notes d'un élève ?");
  sommeEleve = 0;
  let tableNote = [];
  if (entreNote == "oui") {
    for (let j = 0; j < 5; j++) {
      let possitionNote = j + 1;
      do {
        noteEleve = prompt(
          "Entrez les notes des matières suivantes : 1-Maths, 2-Français, 3-Anglais, 4-Physique et 5-Chimie. " +
            "Vous etes à la note " +
            possitionNote
        );
        if (!(noteEleve >= 0 && noteEleve <= 20)) {
          alert("Veuilliez saisir une note entre 0 et 20");
        }
      } while (noteEleve < 0 || noteEleve > 20);
      DividendTotal++;
      noteEleve = parseInt(noteEleve);
      tableNote.push(noteEleve);
      sommeTotal += noteEleve;
      moyenneTotal = sommeTotal / DividendTotal;
      sommeEleve += noteEleve;
      moyenneEleve = sommeEleve / 5;
    }
  }
  if (entreNote == "oui") {
    tableEleves.push(tableNote);
    console.log(tableNote);
    console.log("moyenne eleve " + moyenneEleve);
  }
  i++;
} while (entreNote == "oui");
console.log(tableEleves);
console.log("moyenne total " + moyenneTotal);
