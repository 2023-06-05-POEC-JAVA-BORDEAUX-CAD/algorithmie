// 1. Écrire un programme qui affiche 10 fois le message "Hello World".
for(let i = 0; i < 10; i++) {// i++ ie i = i + 1 ie i += 1
  console.log('Hello world')
}
// 2. Écrire un programme qui affiche 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90.
console.log('---')
for(let i = 100; i >= 90; i--) {
  console.log(i)
}
// 3. Écrire un programme qui affiche tous les codes postaux du département 75.
console.log('---')
for(let i = 75000; i <= 75020; i++) {
  console.log(i)
}
// 4. Écrire un programme qui affiche tous les codes postaux possibles du département 77.
console.log('---')

for(let i = 77000; i < 78000; i = i + 100) {
  // pour respecter l'énoncé, il faut remplacer la partie de l'incrémentation i = i + 100 par i++
  console.log(i)
}
// 5. Écrire un programme qui affiche :
console.log('---')
console.log('preview', `
*
**
***
****
*****

ou 

1
22
333
4444
55555
`)

for(let i = 0; i < 9; i++) { // au premier i = 0
  for(let j = 0; j < i ; j++) { // j = 0 ET i = 0
    console.log(i) 
  }
}