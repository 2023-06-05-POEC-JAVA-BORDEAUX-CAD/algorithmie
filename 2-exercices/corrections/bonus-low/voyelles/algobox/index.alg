<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="//A l'aide de l'appel de la fonction sentenceSize on va récupérer le nombre total de caractère dans la phrase" texte="Compter nombre de voyelles dans une phrase"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" totalAffichages="1000" maxBoucle="500000" arrondiAuto="faux" nbDecimales="8" epaisseurPoint="2" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="FONCTION sentenceSize(sentence)" code="201#sentenceSize#sentence">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction">
                <item algoitem="cp EST_DU_TYPE NOMBRE" code="1#NOMBRE#cp"/>
            </item>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="cp PREND_LA_VALEUR 0" code="5#cp#0#pasliste"/>
            <item algoitem="//sentence[cp] va être vrai (booean) si au rang cp il y a une valeur et faux (boolean) s'il y a pas de valeur" code="19#sentence[cp] va être vrai (booean) si au rang cp il y a une valeur et faux (boolean) s'il y a pas de valeur"/>
            <item algoitem="//Tant qu'il y a une valeur on continue à incrementer notre compteur pour pouvoir compter le nombre de caractère dans la phrase" code="19#Tant qu'il y a une valeur on continue à incrementer notre compteur pour pouvoir compter le nombre de caractère dans la phrase"/>
            <item algoitem="TANT_QUE (sentence[cp]) FAIRE" code="15#sentence[cp]">
                <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                <item algoitem="cp PREND_LA_VALEUR cp+1" code="5#cp#cp+1#pasliste"/>
                <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
            </item>
            <item algoitem="RENVOYER cp" code="205#cp"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
        <item algoitem="FONCTION countVowel(sentence,size)" code="201#countVowel#sentence,size">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction">
                <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
                <item algoitem="count EST_DU_TYPE NOMBRE" code="1#NOMBRE#count"/>
            </item>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="POUR i ALLANT_DE 0 A size-1" code="12#i#0#size-1">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="SI (sentence[i] == &quot;a&quot; OU sentence[i] ==  &quot;e&quot; OU sentence[i] == &quot;i&quot; OU sentence[i] == &quot;o&quot; OU sentence[i] ==  &quot;u&quot; OU sentence[i] == &quot;y&quot; ) ALORS" code="6#sentence[i] == &quot;a&quot; OU sentence[i] ==  &quot;e&quot; OU sentence[i] == &quot;i&quot; OU sentence[i] == &quot;o&quot; OU sentence[i] ==  &quot;u&quot; OU sentence[i] == &quot;y&quot; ">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="count PREND_LA_VALEUR count+1" code="5#count#count+1#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="RENVOYER count" code="205#count"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="sentence EST_DU_TYPE CHAINE" code="1#CHAINE#sentence"/>
        <item algoitem="size EST_DU_TYPE NOMBRE" code="1#NOMBRE#size"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Saisissez une phrase&quot;" code="4#Saisissez une phrase#1"/>
        <item algoitem="LIRE sentence" code="2#sentence#pasliste"/>
        <item algoitem="//A l'aide de l'appel de la fonction sentenceSize on va récupérer le nombre total de caractère dans la phrase" code="19#A l'aide de l'appel de la fonction sentenceSize on va récupérer le nombre total de caractère dans la phrase"/>
        <item algoitem="size PREND_LA_VALEUR sentenceSize(sentence)" code="5#size#sentenceSize(sentence)#pasliste"/>
        <item algoitem="AFFICHER &quot;Nombre de voyelles en miniscules présent dans la phrase : &quot;" code="4#Nombre de voyelles en miniscules présent dans la phrase : #0"/>
        <item algoitem="AFFICHERCALCUL countVowel(sentence,size)" code="20#countVowel(sentence,size)#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
