<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Mission développeur 1 : ouverture du compte" courant="DEBUT_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" totalBoucles="5000000" epaisseurPoint="2" arrondiAuto="faux" maxBoucle="500000" totalAffichages="1000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="sold EST_DU_TYPE NOMBRE" code="1#NOMBRE#sold"/>
        <item algoitem="overdraft EST_DU_TYPE NOMBRE" code="1#NOMBRE#overdraft"/>
        <item algoitem="isOverdraft EST_DU_TYPE CHAINE" code="1#CHAINE#isOverdraft"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Bienvenue chez GTM Bank&quot;" code="4#Bienvenue chez GTM Bank#1"/>
        <item algoitem="AFFICHER &quot;Voulez vous avoir un découvert (y ou Y pour oui, n'importe quel caractère pour non)&quot;" code="4#Voulez vous avoir un découvert (y ou Y pour oui, n'importe quel caractère pour non)#1"/>
        <item algoitem="LIRE isOverdraft" code="2#isOverdraft#pasliste"/>
        <item algoitem="SI (isOverdraft == &quot;y&quot; OU isOverdraft == &quot;Y&quot;) ALORS" code="6#isOverdraft == &quot;y&quot; OU isOverdraft == &quot;Y&quot;">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Saisissez le montant du découvert entre 100 et 2000 €&quot;" code="4#Saisissez le montant du découvert entre 100 et 2000 €#1"/>
            <item algoitem="// Pour rentrer dans la boucle et éviter de lire une première fois puis de rentrer dans la boucle" code="19# Pour rentrer dans la boucle et éviter de lire une première fois puis de rentrer dans la boucle"/>
            <item algoitem="overdraft PREND_LA_VALEUR 99" code="5#overdraft#99#pasliste"/>
            <item algoitem="TANT_QUE (overdraft &lt; 100 OU overdraft > 2000) FAIRE" code="15#overdraft &lt; 100 OU overdraft > 2000">
                <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                <item algoitem="LIRE overdraft" code="2#overdraft#pasliste"/>
                <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
            </item>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="overdraft PREND_LA_VALEUR 0" code="5#overdraft#0#pasliste"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="AFFICHER &quot;Saisissez le dépot (montant d'ouverture de compte minimum de 500 €)&quot;" code="4#Saisissez le dépot (montant d'ouverture de compte minimum de 500 €)#1"/>
        <item algoitem="sold PREND_LA_VALEUR 0" code="5#sold#0#pasliste"/>
        <item algoitem="TANT_QUE (sold &lt; 500) FAIRE" code="15#sold &lt; 500">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="LIRE sold" code="2#sold#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Solde (€): &quot;" code="4#Solde (€): #0"/>
        <item algoitem="AFFICHER sold" code="3#sold#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Découvert (€): &quot;" code="4#Découvert (€): #0"/>
        <item algoitem="AFFICHER overdraft" code="3#overdraft#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
