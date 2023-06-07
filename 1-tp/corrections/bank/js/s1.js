//Declarations des variables
let overdraft;
let sold;
let withdraw;
let operations = [[],[]];

//Fonctions pour refactoriser

function welcome() {
    alert("Bienvenue chez GTM Bank")
}

function askNumber(msg) {
    return parseInt(prompt(msg))
}

function decouvert() {
    do {
        overdraft = askNumber("Saisissez le montant de votre découvert (0 si vous n'avez pas droit au découvert ou n'en voulez pas"));
    } while (overdraft !== 0 && (overdraft < 100 || overdraft > 2000))
    return overdraft;
}

function depot (sold) {
    while (sold < 500) {
        sold = askNumber("Saisissez le montant de votre dépôt (montant d'ouverture minimum de 500 euros)"));
    }
    operations[0].push(sold);
    return sold;
}

function affichage (sold, overdraft) {
    alert(`Solde (euros): ${sold}, \n Découvert (euros): ${overdraft}`);
}

function retrait (ovd, sold) {
    while (withdraw !== 0) {
        withdraw = askNumber("Saisissez le montant du retrait (0 pour quitter))"));
        if (withdraw === 0) {
            affichage(sold, ovd);
        } else if (sold - withdraw < -ovd) {
            alert("solde insuffisant");
        } else {
            operations[1].push(withdraw);
            sold = sold - withdraw;
        }
    } 
}

function agios (ovd) {
    if (ovd === 0) {
      alert("Découvert non autorisé => pas d'agios");
    } else if (ovd >= 100 && ovd <= 2000) {
        let days;
        do {
            days = askNumber("Saisissez le nombre de jours du découvert"));
        } while (days > 365 || days < 1);
    
        let agios = (ovd * days * 0.1) / 365;
        alert(`Agios (euros): ${agios.toFixed(2)}`);
    }
}

//Mission développeur 1 : ouverture du compte
welcome();

let ovd = decouvert();

sold = askNumber("Saisissez le montant de votre dépôt (montant d'ouverture minimum de 500 euros)"));

let sd = depot(sold);

affichage (sd, ovd);

//Mission développeur 2 : retraits

sold = askNumber("Saisissez le montant de votre dépôt"));

retrait(ovd,sold);

//Mission développeur 3 : agios

agios(ovd);

alert(`Vos dépôts sont ${operations[0].join('\n')} \n Vos retraits sont ${operations[1].join('\n')} `)