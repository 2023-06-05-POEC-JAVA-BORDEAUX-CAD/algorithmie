<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Calcul de la moyenne de la classe  de N étudiants" courant="//On retire 1 car à chaque tour, on incrémente le compteur de 1"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" nbDecimales="8" epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES">
        <item code="201#avg#list,size" algoitem="FONCTION avg(list,size)">
            <item code="202#declarationsvariablesfonction" algoitem="VARIABLES_FONCTION">
                <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
                <item code="1#NOMBRE#s" algoitem="s EST_DU_TYPE NOMBRE"/>
            </item>
            <item code="203#debutfonction" algoitem="DEBUT_FONCTION"/>
            <item code="19#s pour somme que j'initialise à zero avant de parcourir les élements de ma boucle" algoitem="//s pour somme que j'initialise à zero avant de parcourir les élements de ma boucle"/>
            <item code="5#s#0#pasliste" algoitem="s PREND_LA_VALEUR 0"/>
            <item code="19#Attention lorsque vous commencez à 0, le dernier element du tableau se trouve à la position taille_du_tableau -1" algoitem="//Attention lorsque vous commencez à 0, le dernier element du tableau se trouve à la position taille_du_tableau -1"/>
            <item code="19#exemple un tableau de 5 élements aura pour indices 0 1 2 3 et 4 ( le dernier élement est à l'indice 4 et non 5)" algoitem="//exemple un tableau de 5 élements aura pour indices 0 1 2 3 et 4 ( le dernier élement est à l'indice 4 et non 5)"/>
            <item code="12#i#0#size-1" algoitem="POUR i ALLANT_DE 0 A size-1">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="5#s#s + list[i]#pasliste" algoitem="s PREND_LA_VALEUR s + list[i]"/>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="205#s/size" algoitem="RENVOYER s/size"/>
            <item code="204#finfonction" algoitem="FIN_FONCTION"/>
        </item>
    </item>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#notes" algoitem="notes EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#cp" algoitem="cp EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#out" algoitem="out EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#cp#0#pasliste" algoitem="cp PREND_LA_VALEUR 0"/>
        <item code="5#out#0#pasliste" algoitem="out PREND_LA_VALEUR 0"/>
        <item code="19#out = 0 => on va rentrer directement dans la boucle tant que ci-apres" algoitem="//out = 0 => on va rentrer directement dans la boucle tant que ci-apres"/>
        <item code="19#ma condition de sortie ou d'arret est la saisi d'une note dont la valeur est -1" algoitem="//ma condition de sortie ou d'arret est la saisi d'une note dont la valeur est -1"/>
        <item code="15#out != -1" algoitem="TANT_QUE (out != -1) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Entrez une note#1" algoitem="AFFICHER &quot;Entrez une note&quot;"/>
            <item code="2#notes#cp" algoitem="LIRE notes[cp]"/>
            <item code="5#out#notes[cp]#pasliste" algoitem="out PREND_LA_VALEUR notes[cp]"/>
            <item code="5#cp#cp+1#pasliste" algoitem="cp PREND_LA_VALEUR cp+1"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#Nombre total d'étudiants : #0" algoitem="AFFICHER &quot;Nombre total d'étudiants : &quot;"/>
        <item code="19#On retire 1 car à chaque tour, on incrémente le compteur de 1" algoitem="//On retire 1 car à chaque tour, on incrémente le compteur de 1"/>
        <item code="5#cp#cp-1#pasliste" algoitem="cp PREND_LA_VALEUR cp-1"/>
        <item code="3#cp#0#pasliste" algoitem="AFFICHER cp"/>
        <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
        <item code="4#Moyenne de la classe : #0" algoitem="AFFICHER &quot;Moyenne de la classe : &quot;"/>
        <item code="20#avg(notes,cp)#0" algoitem="AFFICHERCALCUL avg(notes,cp)"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
