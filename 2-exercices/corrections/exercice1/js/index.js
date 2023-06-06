const lastName = prompt('Nom ?')
const firstName = prompt('Prénom ?')
let age = prompt('Age') // ici avec un prompt le type est forcément une chaine de caractère
age = parseInt(age) // transformer la chaine de caractère en nombre parce que l'âge doit être un nombre.

console.log(`Nom : ${lastName}, Prénom : ${firstName} et age ${age}`)
