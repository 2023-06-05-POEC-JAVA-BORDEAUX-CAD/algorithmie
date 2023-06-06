<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;mineur&quot;" texte="Nom, Prenom et vérification de la majorité âge"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" arrondiAuto="faux" epaisseurPoint="2" maxBoucle="500000" nbDecimales="8" totalBoucles="5000000" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#lastname" algoitem="lastname EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#firstname" algoitem="firstname EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#age" algoitem="age EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#lastname#pasliste" algoitem="LIRE lastname"/>
        <item code="2#firstname#pasliste" algoitem="LIRE firstname"/>
        <item code="2#age#pasliste" algoitem="LIRE age"/>
        <item code="4#Bonjour #0" algoitem="AFFICHER &quot;Bonjour &quot;"/>
        <item code="3#lastname#0#pasliste" algoitem="AFFICHER lastname"/>
        <item code="4# #0" algoitem="AFFICHER &quot; &quot;"/>
        <item code="3#firstname#0#pasliste" algoitem="AFFICHER firstname"/>
        <item code="4# vous avez #0" algoitem="AFFICHER &quot; vous avez &quot;"/>
        <item code="3#age#0#pasliste" algoitem="AFFICHER age"/>
        <item code="4# an(s).#0" algoitem="AFFICHER &quot; an(s).&quot;"/>
        <item code="6#age >= 18" algoitem="SI (age >= 18) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="6#age == 18" algoitem="SI (age == 18) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#majeur et exactement 18 ans#0" algoitem="AFFICHER &quot;majeur et exactement 18 ans&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="4#majeur#0" algoitem="AFFICHER &quot;majeur&quot;"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#mineur#0" algoitem="AFFICHER &quot;mineur&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
