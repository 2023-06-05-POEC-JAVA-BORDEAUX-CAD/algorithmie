/**
 * Au premier tour dans la grande boucle i = 1
 * ensuite le programme parcours entièrement la petite boucle 
 * avant de repasser dans la grande et d'incrémenter i
 */
for(let i = 1 ; i <= 15; i++) {// grande boucle qui fait les tables
    console.log('----Table de ' + i + '-----')
    for(let j = 1; j <= 10; j++) { // petite boucle 
        console.log(`${i} x ${j} = ${i*j}`)
    }
}