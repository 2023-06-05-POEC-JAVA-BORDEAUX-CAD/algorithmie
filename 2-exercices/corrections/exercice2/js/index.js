const lastName = prompt('Nom ?')
const firstName = prompt('Prénom ?')
let age = prompt('Age')
age = parseInt(age)

console.log(`Nom : ${lastName}, Prénom : ${firstName} et age ${age}`)

if(age > 18) {
  console.log('Majeur !')
} else if( age === 18) {
  console.log('Exactement 18 !')
} else {
  console.log('Mineur !')
}