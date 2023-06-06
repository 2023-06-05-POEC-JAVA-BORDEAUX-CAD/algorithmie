let i = 0;
let tableBis = [];
let noteEleve;
let entreNote;
do {
  entreNote = prompt("Voulez-Vous entrer les notes d'un élève ?");
  if (entreNote == "oui") {
    tableBis[i] = [];
    for (let j = 0; j < 5; j++) {
      let possitionNote = j + 1;
      noteEleve = prompt(
        "Entrez les notes des matières suivantes : 1-Maths, 2-Français, 3-Anglais, 4-Physique et 5-Chimie. " +
          "Vous etes à la note " +
          possitionNote
      );
      noteEleve = parseInt(noteEleve);
      tableBis[i][j] = noteEleve;
      console.log(tableBis);
    }
  }
  i++;
} while (entreNote == "oui");
