/**
 * 1. Afficher à l'utilisateur une boite de dialogue pour lui demander de saisir une phrase
 *  - Une chaine de caractère(ce qui est saisi dans le prompt est un tableau) donc il faut parcourir le tableau
 *  - transformer la donnée saisie par l'utilisateur en miniscule pour qu'on compter également les A, E, etc.
 * 2. Définir les voyelles a, e, y,u , i,o
 * 3. il me faut un compteur pour compter les voyelles 
 * 4. Ensuite je vérifie chaque caractère pour savoir si c'est une voyelle ou non
 * 5. Si le caractère en cours (celui qui est parcourue dans notre tableau actuellement) est une voyelle
 *  5.1 Alors j'incrémente de 1 mon compteur
 * 6. Afficher le compteur
 */

// 1
let phrase = prompt('saisir une phrase') // c'est un tableau
phrase = phrase.toLowerCase()
// 2
let voyelles = ['a', 'e', 'i', 'u', 'o', 'y', 'é', 'î']
// 3
let compteur = 0
// 4
for(let i = 0; i < phrase.length; i++) {
    for(let j = 0; j < voyelles.length; j++) {
        // 5
        if(phrase[i] == voyelles[j]) {
            compteur++
        }
    }
}
// 6
console.log('phrase ', phrase, 'nombre de voyelles ', compteur)

// autre proposition

// phrase = "bonjour"
for(let i = 0; i < phrase.length; i++) {
    let lt = phrase[i] // b ensuite au prochain tour o
    // 5
    if(
        lt == 'a' ||
        lt == 'e' ||
        lt == 'i' ||
        lt == 'y' ||
        lt == 'u' ||
        lt == 'o'
    ) {
        compteur++
    }
}