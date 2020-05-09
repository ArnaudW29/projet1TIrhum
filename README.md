# 1T-projet-final
Voici le repository pour notre projet creation de recettes de rhum en ligne.

2019 - 2020 Aspects Structures et Données

 ![Image de l'ephec](https://i.imgur.com/k1pB47i.png?1)
## Présentation :  
Nous sommes 2 élèves en TI de l'[Ephec](https://www.ephec.be/)
* [MUTTERER Matthieu](https://github.com/Matthieu-mutterer) 1TM2
* [WAETERMANS Arnaud](https://github.com/ArnaudW29) 1TM2
## Description :
Recette de rhum arrangé.
## Configuration de la DB : 
* id utilisateur : **dba**
* mdp utisateur  : **sql**
* nom du serveur : **projet**
* nom de la db   : **projet**
* -n projet "C:\Users\lll\Desktop\dbprojet\FRONTEND\projet.db"
* -x tcpip
* -xs http(**port=81**)
### FONCTIONNALITES PRINCIPALES : 
* Mettre a disposition une liste de recette de rhum arrangé avec tous les ingredients ainsi que la quantité.
* Un formulaire pour créer sa propre recette et la poster.
### FONCTIONNALITES SECONDAIRES : 
* Une approximation du prix que le rhum coutera a la fabrication.
* Affichage du temps de maturation de la recette en fonction de la recette selectionnée.
* Affichage du temps de creation en fonction de la recette selectionnée.
## Aspects implémentés :
* **backend** : Une base de données avec les recettes de chaque rhum et le prix de chaque ingredients, ainsi que le temps de maturation et creation.
* **backend** : Un serveur web capable de fournir les pages html, js, css, ainsi que de proposer des webservices
* **backend** : Des webservices (avec les procédures associées) :
	* Un webservice permettant la selection d'un rhum.
	* Un webservice permettant d'afficher le prix de chaque ingredients et du total de la recette.
	* Un webservice permettant d'afficher le temps de maturation du rhum.
* **frontend** : Une page web (html, js, css) permettant d'appeler les webservices et de traiter les réponses, les utilisants pour modifier la page: 	
	* afficher la recette du rhum
	* afficher le prix de la recette
	* afficher temps de fermentation pour que le rhum arrive a maturation
	* afficher quel alcool utiliser/quantite/unite/degré de celui ci 
## TO DO LIST :
* **backend** : 
     * [x]  Creer les tables SQL.
     * [x] Creer les services web pour initialiser la page et gérer les requetes/interactions.
     * [x] Creer les procédures pour charger les fichiers html/css/js ainsi que pour traiter les réponses et requetes.
* **frontend** : 
     * [x] Creer la page html et le css.
     * [ ] Creer un fichier js permettant:
     - d'initaliser la page et les recettes.
     - de créer des recettes.
