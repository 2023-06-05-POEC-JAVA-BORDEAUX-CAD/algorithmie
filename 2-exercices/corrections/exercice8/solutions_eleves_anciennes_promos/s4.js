const matieres = ["Maths", "Français", "Anglais", "Physique", "Chimie"];

function getStudentsGrades() {
  const classGrades = [];

  const studentNumber = parseInt(
    prompt("Combien y a t'il d'élèves dans la classe ?")
  );

  if (studentNumber > 0) {
    for (let j = 1; j <= studentNumber; j++) {
      const studentGrades = [];

      for (let i = 0; i < 5; i++) {
        const grade = parseInt(
          prompt(
            `Elève n° ${j} - Veuillez saisir la note de la matière : ${matieres[i]}`
          )
        );
        if (grade < 0 || grade > 20) {
        }
        studentGrades.push(grade);
      }
      classGrades.push(studentGrades);
    }
  } else {
    prompt("Pas d'élèves dans la classe.");
  }

  return classGrades;
}

//const allStudentsGrades = getStudentsGrades();
console.log("allStudentsGrades", allStudentsGrades);

function calcIndividualAverage(studentsArray) {
  const individualAverageResults = [];

  for (let i = 0; i < studentsArray.length; i++) {
    const average =
      studentsArray[i].reduce((a, b) => a + b, 0) / studentsArray[i].length;

    individualAverageResults.push(average);
  }

  return individualAverageResults;
}

const allStudentsAverages = calcIndividualAverage(allStudentsGrades);
console.log("allStudentsAverages", allStudentsAverages);

function getGradesPerTopic() {
  const allGradesPerTopic = [];

  for (let i = 0; i < 5; i++) {
    const singleTopicGrades = [];
    for (let j = 0; j < allStudentsGrades.length; j++) {
      singleTopicGrades.push(allStudentsGrades[j][i]);
    }
    allGradesPerTopic.push(singleTopicGrades);
  }
  return allGradesPerTopic;
}

const gradesPerTopic = getGradesPerTopic(allStudentsGrades);
console.log("gradesPerTopic", gradesPerTopic);

function calcTopicAverage(topicArray) {
  const individualTopicAverageResults = [];

  for (let i = 0; i < topicArray.length; i++) {
    const average =
      topicArray[i].reduce((a, b) => a + b, 0) / topicArray[i].length;

    individualTopicAverageResults.push(average);
  }

  return individualTopicAverageResults;
}

const averagesPerTopic = calcTopicAverage(gradesPerTopic);
console.log("averagesPerTopic", averagesPerTopic);
