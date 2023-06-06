/**
 * Compte le nombre de consonnes en utilisant des voyelles
 * @param {string} str 
 * @returns Number
 */
function countConsonant (str) {
  str = str.toLowerCase()
  let cp = str.length
  for(let i = 0; i < str.length; i++) {
    let letter = str[i]
    if(
      letter == 'a' ||
      letter == 'e' ||
      letter == 'y' || 
      letter == 'u' ||
      letter == 'i' ||
      letter == 'o' ||
      letter == ' ' ||
      letter >= 0
    ) {
      cp--
    }
  }
  return cp
}

/**
 * Permuter 2 valeurs
 * @param {Number} nb1 
 * @param {Number} nb2 
 * @returns string
 */
function permute(nb1, nb2) {
  let temp = nb1
  nb1 = nb2
  nb2 = temp
  return `nb1 = ${nb1}, nb2 = ${nb2}`
}

/**
 * Détermine si un mot est un palindrome ou nom
 * Palindrome = un mot qui peut se lire dans les 2 sens (de gauche vers la droite vice-versa)
 * @param {string} sentence 
 * @returns boolean
 */
function isPalindrome(sentence) {
  let reverse  = ''
  let last = sentence.length - 1
  for(let i = last; i >= 0; i--) {
    reverse += sentence[i]
  }
  if(reverse == sentence) {
    return true
  }
  return false
}

/**
 * Retourne la valeur la plus grande dans un tableau
 * @param {Array} tab 
 * @returns Number
 */
function maxOfTab(tab) {
  let max = tab[0]
  for(let i = 0; i < tab.length; i++) {
    if(tab[i] > max) {
      max = tab[i]
    }
  }
  return max
}

/**
 * Retoune la valeur la plus pétite d'un tableau
 * @param {Array} tab 
 * @returns Number
 */
function minOfTab(tab) {
  let min = tab[0]
  for(let i = 0; i < tab.length; i++) {
    if(tab[i] < min) {
      min = tab[i]
    }
  }
  return min
}

/**
 * Donne la taille du mot le plus long de la phrase
 * @param {string} str 
 * @returns Number
 */
function lengthLargestWord(str) {
  let words = str.split(" ");
  let max = 0;
  for (let i = 0; i < words.length; i++) {
    for (let j = 0; j < words.length; j++) {
      if (max <= words[j].length) {
        max = words[j].length;
      }
    }
  }
  return max;
}

/**
 * Donne la taille du mot le plus petit d'une phrase
 * @param {string} str 
 * @returns Number
 */
function lengthShortestWord(str) {
  let words = str.split(" ");
  let min = str.length;
  for (let i = 0; i < words.length; i++) {
    for (let j = 0; j < words.length; j++) {
      if (min >= words[j].length) {
        min = words[j].length;
      }
    }
  }
  return min;
}

/**
 * Retourne le mot le plus grand
 * @param {string} str 
 * @returns string
 */
function largestWord(str) {
  let words = str.split(" ");
  let indexLargestWord = 0;
  let max = 0
  for (let i = 0; i < words.length; i++) {
    if (max <= words[i].length) {
      max = words[i].length
      indexLargestWord = i
    }
  }
  return words[indexLargestWord];
}

/**
 * Constitue un tableau contenant le maximum de chaque sous tableau
 * @param {Array} arr tableau à 2 dimensions (un tableau qui contient des tableaux)
 * @returns Array
 */
function maxOfEachSubTab(arr) {
  let res = [];
  for (let i = 0; i < arr.length; i++) {
    let max = arr[i][0];
    for (let j = 0; j < arr[i].length; j++) {
      if (max <= arr[i][j]) {
        max = arr[i][j];
      }
    }
    res[i] = max;
  }
  return res;
}

/**
* Ne cherchez pas à comprendre les lignes suivantes
* Pour les curieux c'est une façon de pouvoir exporter mes fonctions en dehors de ce fichier
* Donc pouvoir les réutiliser ailleurs
* D'ailleurs vous verrez une autre façon de faire plus récente
*/
module.exports = {
  countConsonant,
  permute,
  isPalindrome,
  maxOfTab,
  minOfTab,
  lengthLargestWord,
  lengthShortestWord,
  largestWord,
  maxOfEachSubTab
}

