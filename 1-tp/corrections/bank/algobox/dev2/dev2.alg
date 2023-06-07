<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Découvert autorisé (€): &quot;" texte="Mission développeur 2 : retraits"/>
    <extension extnom="inactif"/>
    <fonction fctetat="actif" fctcode=""/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" totalBoucles="5000000" arrondiAuto="faux" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="sold EST_DU_TYPE NOMBRE" code="1#NOMBRE#sold"/>
        <item algoitem="overdraft EST_DU_TYPE NOMBRE" code="1#NOMBRE#overdraft"/>
        <item algoitem="withdraw EST_DU_TYPE NOMBRE" code="1#NOMBRE#withdraw"/>
        <item algoitem="stopWithdraw EST_DU_TYPE NOMBRE" code="1#NOMBRE#stopWithdraw"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Bienvenue chez GTM Bank&quot;" code="4#Bienvenue chez GTM Bank#1"/>
        <item algoitem="AFFICHER &quot;Saisissez le montant de votre découvert (0 si vous n'avez pas droit au découvert)&quot;" code="4#Saisissez le montant de votre découvert (0 si vous n'avez pas droit au découvert)#1"/>
        <item algoitem="LIRE overdraft" code="2#overdraft#pasliste"/>
        <item algoitem="SI (overdraft != 0) ALORS" code="6#overdraft != 0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="TANT_QUE (overdraft &lt; 100 OU overdraft > 2000) FAIRE" code="15#overdraft &lt; 100 OU overdraft > 2000">
                <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                <item algoitem="LIRE overdraft" code="2#overdraft#pasliste"/>
                <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
            </item>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="AFFICHER &quot;Saisissez le montant de votre solde&quot;" code="4#Saisissez le montant de votre solde#1"/>
        <item algoitem="LIRE sold" code="2#sold#pasliste"/>
        <item algoitem="TANT_QUE (overdraft+sold &lt; 0) FAIRE" code="15#overdraft+sold &lt; 0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="LIRE sold" code="2#sold#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="stopWithdraw PREND_LA_VALEUR 1" code="5#stopWithdraw#1#pasliste"/>
        <item algoitem="TANT_QUE (stopWithdraw != 0) FAIRE" code="15#stopWithdraw != 0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Saisissez le montant du retrait (0 pour quitter)&quot;" code="4#Saisissez le montant du retrait (0 pour quitter)#1"/>
            <item algoitem="LIRE withdraw" code="2#withdraw#pasliste"/>
            <item algoitem="SI (withdraw > sold + overdraft) ALORS" code="6#withdraw > sold + overdraft">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Solde insuffisant&quot;" code="4#Solde insuffisant#1"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="sold PREND_LA_VALEUR sold - withdraw" code="5#sold#sold - withdraw#pasliste"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="stopWithdraw PREND_LA_VALEUR withdraw" code="5#stopWithdraw#withdraw#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Solde (€): &quot;" code="4#Solde (€): #0"/>
        <item algoitem="AFFICHER sold" code="3#sold#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Découvert autorisé (€): &quot;" code="4#Découvert autorisé (€): #0"/>
        <item algoitem="AFFICHER overdraft" code="3#overdraft#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
