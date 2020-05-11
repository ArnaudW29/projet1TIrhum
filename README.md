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


-serviceweb

* -n projet "C:\Users\lll\Desktop\dbprojet\FRONTEND\projet.db"
* -x tcpip
* -xs http(**port=81**)
## Shema relationnel :
![image du shema relatioinnel](https://i.imgur.com/e9dyFFF.png)
## Détail DB : 
### -tbAlcool :
Il s'agit de la tables des alcools

pk = alcoolId

Cette table comprend 3 colonnes : 
* alcoolId qui est auto incrmentée et un integer.
* alcoolNom qui est un varchar(50) regroupant les noms des alcools.
* alcoolDegre qui est un decimal(3,1) regroupant les degres d'alcool pour chaque alcool. 

### -tbIngredient : 
Il s'agit de la tables des ingredients

pk = ingreId

clé d'unicite = ingreNom (evite doublons de noms meme si pas la même id)

Cette table comprend 2 colonnes :
* ingreId qui est un integer.
* ingreNom qui est un varchar(30) regroupant les noms de chaques ingredients.


### -tbNoms :
Il s'agit de la table des nom de rhums

pk = nomId

clé d'unicite = nomNom (evite doublons de noms meme si pas la même id)

Cette table comprend 2 colonnes : 
* nomId qui est un integer.
* nomNom qui est un varchar(40) regroupant les noms des rhums.


### -tbUnite
Il s'agit de la table des unites et de leur symboles

pk = uniteId

Cette table comprend 3 colonnes : 
* uniteId qui est un integer autoincrement.
* uniteNom qui est un varchar(15) regroupant les noms des unités.
* uniteSymbole qui est un varchar(3) NULL regroupant les symboles des unités si elles en ont.


### -tbRecette_ingre
Il s'agit de la table qui sert a construire la recette d'ingredient de chaque rhum

pk = ingreId,recetteId 

fk = ingreId > tbIngredient.ingreId

fk = uniteId > tbUnite.uniteId

fk = recetteId > tbRhum.recetteId

Cette table comprend 4 colonnes : 
* recetteId qui est un integer.
* ingreId qui est un integer.
* uniteId qui est un integer.
* quantité qui est un integer qui reprend les quantites utilsés.


### -tbRhum
Il s'agit de la table qui regroupe toutes les infromations de la confection du rhum

pk = recetteId

fk = alcoolId > tbAlcool.alcoolId

fk = nomId > tbNoms.nomId

Cette table comprend 8 colonnes : 
* nomId qui est un integer.
* recetteId qui est un integer.
* alcoolId qui est un integer.
* rhumQte qui est un integer qui regroupe les quantités de rhum
* rhumUnite qui est un varchar(10) qui regroupe les unites des rhums
* rhumMacer qui est un varchar(30) qui regroupe le temps de maceration de chaque rhums
* rhumPrix qui est un decimal(4,2) NULL  qui regroupe le prix de chaque rhum
* rhumDeroulement qui est un varchar(500) NULL qui regroupe une petite explication de chaque rhum


### FONCTIONNALITES PRINCIPALES : 
* Mettre a disposition une liste de recette de rhum arrangé avec tous les ingredients ainsi que la quantité.
* Un formulaire pour créer sa propre recette
### FONCTIONNALITES SECONDAIRES : 
* Une approximation du prix que le rhum coutera a la fabrication.
* Affichage du temps de maturation de la recette en fonction de la recette selectionnée.
* Affichage du temps de creation en fonction de la recette selectionnée.
## Aspects implémentés :
* **backend** : Une base de données avec les recettes de chaque rhum et le prix de chaque ingredients, ainsi que le temps de maturation et creation.
* **backend** : Un serveur web capable de fournir les pages html, js, css, ainsi que de proposer des webservices
* **backend** : Des webservices (avec les procédures associées) :
	* Un webservice permettant la selection d'un rhum.
	* Un webservice permettant d'afficher le de la recette.
	* Un webservice permettant d'afficher le nom de chaque rhum
	* Un webservice permettant d'afficher le temps de maturation du rhum.
* **frontend** : Une page web (html, js, css) permettant d'appeler les webservices et de traiter les réponses, les utilisants pour modifier la page: 	
	* afficher la recette du rhum
	* afficher le prix de la recette
	* afficher temps de fermentation pour que le rhum arrive a maturation
	* afficher quel alcool utiliser/quantite/unite/degré de celui ci 
## TO DO LIST :
* **backend** : 
     * [x] Creer les tables SQL.
     * [x] Creer les services web pour initialiser la page et gérer les requetes/interactions.
     * [x] Creer les procédures pour charger les fichiers html/css/js ainsi que pour traiter les réponses et requetes.
* **frontend** : 
     * [x] Creer la page html et le css.
     * [x] Creer un fichier js permettant:
     - d'initaliser la page et les recettes.
     - de créer des recettes.
