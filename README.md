# 1T-projet-final
Voici le repository pour notre projet creation de recettes de rhum en ligne.

2019 - 2020 Aspects Structures et Données
## Présentation : 
Nous sommes 2 élèves en TI de l'[Ephec](https://www.ephec.be/) 
* [MUTTERER Matthieu](https://github.com/Matthieu-mutterer) 1TM2
* [WAETERMANS Arnaud](https://github.com/ArnaudW29) 1TM2
## Description :
Recette de rhum arrangé.
### FONCTIONNALITES PRINCIPALES : 
* Mettre a disposition une liste de recette de rhum arrangé avec tous les ingredients ainsi que la quantité.
* Un formulaire pour créer sa propre recette et la poster.
### FONCTIONNALITES SECONDAIRES : 
* Une approximation du prix que le rhum coutera a la fabrication.
* Affichage du temps de maturation de la recette en fonction de la recette selectionnée.
* Affichage du temps de creation en fonction de la recette selectionnée.
* Un systeme de like/dislike en dessous de chaque recette.
## Aspects implémentés :
* **backend** : Une base de données avec les recettes de chaque rhum et le prix de chaque ingredients, ainsi que le temps de maturation et creation.
* **backend** : Un serveur web capable de fournir les pages html, js, css, ainsi que de proposer des webservices
* **backend** : Des webservices (avec les procédures associées) :
	* Un webservice permettant la selection d'un rhum.
	* Un webservice permettant d'afficher le classement des rhums les plus aimés.
	* Un webservice permettant d'afficher le prix de chaque ingredients et du total de la recette.
	* Un webservice permettant d'afficher le temps de maturation/creation du rhum.
* **frontend** : Une page web (html, js, css) permettant d'appeler les webservices et de traiter les réponses, les utilisants pour modifier la page: 
	* afficher le classement des rhum les plus aimés	
	* afficher la recette du rhum
	* afficher le prix de la recette
	* afficher le temps necessaire pour la recette/temps de fermentation pour que le rhum arrive a maturation
	* cliquer sur le like/dislike
## TO DO LIST :
* **backend** : 
     * [ ]  Creer les tables SQL.
     * [ ] Creer les services web pour initialiser la page et gérer les requetes/interactions.
     * [ ] Creer les procédures pour charger les fichiers html/css/js ainsi que pour traiter les réponses et requetes.
* **frontend** : 
     * [ ] Creer la page html et le css.
     * [ ] Creer un fichier js permettant:
     - d'initaliser la page et les recettes.
     - de permettre aux utilisateurs de mettre un Like/Dislike.
     - de créer des recettes.
