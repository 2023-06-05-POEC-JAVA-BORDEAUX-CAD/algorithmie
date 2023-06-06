<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Nom, Prenom et âge" courant="AFFICHER &quot; an(s).&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2defaut="" F2para="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="faux" nbDecimales="8" maxBoucle="500000" epaisseurLigne="2" totalAffichages="1000" totalBoucles="5000000" epaisseurPoint="2"/>
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
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
