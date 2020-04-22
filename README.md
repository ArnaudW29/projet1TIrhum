# 1T-exemple-projet-final
Voici le repository pour notre projet creation de recettes de rhum en ligne.
2019 - 2020 Aspects Structures et Données
## Présentation :
Nous sommes 2 élèves en TI de l'EPHEC Louvain-la-neuve
- MUTTERER Matthieu 1TM2
- [WAETERMANS Arnaud](https://github.com/ArnaudW29) 1TM2
## Description du projet 
Recette de rhum arrangé
L'idée est de mettre a disposition une liste de recette de rhum arrangé avec tous les ingredients ainsi que la quantité de ceux ci et une approximation du prix que le rhum coutera a la fabrication.
On affiche le temps de maturation et de creation en fonction de la recette selectionné
On mets un systeme de like/dislike en dessous de chaque recette.
Ainsi qu'un formulaire pour ajouter des recettes personnels
## Aspects implémentés
1) backend : Une base de données avec les recettes de chaque rhum.
2) backend : Un serveur web capable de fournir les pages html, js, css, ainsi que de proposer des webservices
3) backend : Des webservices (avec les procédures associées) :
	-Un webservice permettant la selection d'un rhum
	-Un webservice permettant d'afficher le classement des rhums les plus aimés
	-Un webservice permettant d'afficher le prix de chaque ingredients et du total de la recette
4) frontend : Une page web (html, js, css) permettant d'appeler les webservices et de traiter les réponses, qui propose une interface utilisateur pour:
	
-afficher le classement des rhum les plus aimés	
-afficher la recette du rhum
-afficher le prix de la recette
-afficher le temps necessaire pour la recette/temps de fermentation pour que le rhum arrive a maturation
-cliquer sur le like/dislike
