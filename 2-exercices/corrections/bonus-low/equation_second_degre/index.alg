<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Équation de sécond dégré ax² +bx + c = 0 avec la forme canonique d'un polynome&#xa;Discriminant D = b² - 4ac&#xa;si D &lt; 0 Pas de solution&#xa;SI D = 0 alors x = -b/(2a)&#xa;Si D > 0&#xa;solutions x1 = (-b + racine(b²-4ac))/2a x2 =(-b- racine(b²-4ac))/2a" courant="FIN_TANT_QUE"/>
    <extension extnom="inactif"/>
    <fonction fctcode="sqrt(b)" fctetat="actif"/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#a" algoitem="a EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#b" algoitem="b EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#c" algoitem="c EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#discriminant" algoitem="discriminant EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#x0" algoitem="x0 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#x1" algoitem="x1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#x2" algoitem="x2 EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#quit" algoitem="quit EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#quit#&quot;no&quot;#pasliste" algoitem="quit PREND_LA_VALEUR &quot;no&quot;"/>
        <item code="15#quit!=&quot;q&quot;" algoitem="TANT_QUE (quit!=&quot;q&quot;) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Saisir le premier nombre#0" algoitem="AFFICHER &quot;Saisir le premier nombre&quot;"/>
            <item code="2#a#pasliste" algoitem="LIRE a"/>
            <item code="4#Saisir le deuxième nombre#0" algoitem="AFFICHER &quot;Saisir le deuxième nombre&quot;"/>
            <item code="2#b#pasliste" algoitem="LIRE b"/>
            <item code="4#Saisir le troisième nombre#0" algoitem="AFFICHER &quot;Saisir le troisième nombre&quot;"/>
            <item code="2#c#pasliste" algoitem="LIRE c"/>
            <item code="6#a==0" algoitem="SI (a==0) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="6#b!=0" algoitem="SI (b!=0) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#La solution est #0" algoitem="AFFICHER &quot;La solution est &quot;"/>
                    <item code="20#-c/b#0" algoitem="AFFICHERCALCUL -c/b"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="5#discriminant#b*b - 4*a*c#pasliste" algoitem="discriminant PREND_LA_VALEUR b*b - 4*a*c"/>
                    <item code="6#discriminant>0" algoitem="SI (discriminant>0) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="4#x1=#0" algoitem="AFFICHER &quot;x1=&quot;"/>
                        <item code="5#x1#(-b-sqrt(discriminant))/2*a#pasliste" algoitem="x1 PREND_LA_VALEUR (-b-sqrt(discriminant))/2*a"/>
                        <item code="5#x2#(-b+sqrt(discriminant))/2*a#pasliste" algoitem="x2 PREND_LA_VALEUR (-b+sqrt(discriminant))/2*a"/>
                        <item code="3#x1#1#pasliste" algoitem="AFFICHER x1"/>
                        <item code="4#x2=#0" algoitem="AFFICHER &quot;x2=&quot;"/>
                        <item code="3#x2#1#pasliste" algoitem="AFFICHER x2"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                        <item code="9#sinon" algoitem="SINON">
                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                            <item code="6#discriminant==0" algoitem="SI (discriminant==0) ALORS">
                                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                <item code="5#x0#-b/(2*a)#pasliste" algoitem="x0 PREND_LA_VALEUR -b/(2*a)"/>
                                <item code="4#Solution double x0=#0" algoitem="AFFICHER &quot;Solution double x0=&quot;"/>
                                <item code="3#x0#0#pasliste" algoitem="AFFICHER x0"/>
                                <item code="8#finsi" algoitem="FIN_SI"/>
                                <item code="9#sinon" algoitem="SINON">
                                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                    <item code="4#Aucun résultat#0" algoitem="AFFICHER &quot;Aucun résultat&quot;"/>
                                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                                </item>
                            </item>
                            <item code="11#finsinon" algoitem="FIN_SINON"/>
                        </item>
                    </item>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
            <item code="4#Voulez-vous continuer ?#1" algoitem="AFFICHER &quot;Voulez-vous continuer ?&quot;"/>
            <item code="4#N'importe qu'elle caractère pour Continuer, le caractère q pour quitter#0" algoitem="AFFICHER &quot;N'importe qu'elle caractère pour Continuer, le caractère q pour quitter&quot;"/>
            <item code="2#quit#pasliste" algoitem="LIRE quit"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
