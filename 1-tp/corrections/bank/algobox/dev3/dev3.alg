<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Mission développeur 3 : calcul agios" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctetat="actif" fctcode="ALGOBOX_ARRONDIR(agios,2)"/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" nbDecimales="8" epaisseurLigne="2" maxBoucle="500000" totalBoucles="5000000" totalAffichages="1000" arrondiAuto="faux"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="overdraft EST_DU_TYPE NOMBRE" code="1#NOMBRE#overdraft"/>
        <item algoitem="day EST_DU_TYPE NOMBRE" code="1#NOMBRE#day"/>
        <item algoitem="agios EST_DU_TYPE NOMBRE" code="1#NOMBRE#agios"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Saisissez le montant du découvert autorisé&quot;" code="4#Saisissez le montant du découvert autorisé#1"/>
        <item algoitem="LIRE overdraft" code="2#overdraft#pasliste"/>
        <item algoitem="SI (overdraft != 0) ALORS" code="6#overdraft != 0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="TANT_QUE (overdraft &lt; 100 OU overdraft > 2000) FAIRE" code="15#overdraft &lt; 100 OU overdraft > 2000">
                <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                <item algoitem="LIRE overdraft" code="2#overdraft#pasliste"/>
                <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
            </item>
            <item algoitem="AFFICHER &quot;Saisissez le nombre de jour d'utilisation du découvert&quot;" code="4#Saisissez le nombre de jour d'utilisation du découvert#1"/>
            <item algoitem="TANT_QUE (day &lt; 1 OU day > 365) FAIRE" code="15#day &lt; 1 OU day > 365">
                <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                <item algoitem="LIRE day" code="2#day#pasliste"/>
                <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
            </item>
            <item algoitem="agios PREND_LA_VALEUR (overdraft*day*0.1)/365" code="5#agios#(overdraft*day*0.1)/365#pasliste"/>
            <item algoitem="agios PREND_LA_VALEUR ALGOBOX_ARRONDIR(agios,2)" code="5#agios#ALGOBOX_ARRONDIR(agios,2)#pasliste"/>
            <item algoitem="AFFICHER &quot;Agios (€): &quot;" code="4#Agios (€): #0"/>
            <item algoitem="AFFICHER agios" code="3#agios#0#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Découvert non autorisé => pas d'agios&quot;" code="4#Découvert non autorisé => pas d'agios#0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
