<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Mathématiques" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" nbDecimales="8" epaisseurPoint="2" arrondiAuto="faux" maxBoucle="500000" totalBoucles="5000000" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nb1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb1"/>
        <item algoitem="nb2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb2"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE nb1" code="2#nb1#pasliste"/>
        <item algoitem="LIRE nb2" code="2#nb2#pasliste"/>
        <item algoitem="AFFICHER &quot;Résultat de l'addition : &quot;" code="4#Résultat de l'addition : #0"/>
        <item algoitem="AFFICHERCALCUL nb1 + nb2" code="20#nb1 + nb2#1"/>
        <item algoitem="AFFICHER &quot;Résultat de la soustraction : &quot;" code="4#Résultat de la soustraction : #0"/>
        <item algoitem="AFFICHERCALCUL nb1 - nb2" code="20#nb1 - nb2#1"/>
        <item algoitem="AFFICHER &quot;Résultat de la multiplication : &quot;" code="4#Résultat de la multiplication : #0"/>
        <item algoitem="AFFICHERCALCUL nb1 * nb2" code="20#nb1 * nb2#1"/>
        <item algoitem="SI (nb2 == 0) ALORS" code="6#nb2 == 0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Division par 0 impossible.&quot;" code="4#Division par 0 impossible.#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Résultat de la division : &quot;" code="4#Résultat de la division : #0"/>
                <item algoitem="AFFICHERCALCUL nb1 / nb2" code="20#nb1 / nb2#1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
