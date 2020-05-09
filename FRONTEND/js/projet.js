"use strict";
let ing="";
let rep="";
let ingr="";
function initNom(){
	let xhr= new XMLHttpRequest();
	xhr.open('get',"http://localhost:81/getNom", true);
	xhr.onload = 
		function x(){
			let rep = JSON.parse(xhr.responseText);
			let str="";
			for(let i of rep){
				str += "<option value='"+i.nomId+"'  id='"+"rhum"+i.nomId+"'>"+ i.nomNom +"</option>";
			}
			gid("rhumSel").innerHTML = str;
		};
	xhr.send();
}
function initAlc(){
	let xhr= new XMLHttpRequest();
	xhr.open('get',"http://localhost:81/getAlc",true);
	xhr.onload =
		function x(){
		let rep = JSON.parse(xhr.responseText);
		let str= "";
		for(let i of rep){
			str +=  "<option value='"+i.alcoolId+"'>"+ i.NomDegr+"</option>";
		}
		gid("alcool").innerHTML = str;
		};
		xhr.send();
}
function initUnite(){
	let xhr = new XMLHttpRequest();
	xhr.open('get',"http://localhost:81/getUnite",true);
	xhr.onload =
		function x(){
		let rep = JSON.parse(xhr.responseText);
		let str = "";
		for(let i of rep){
			str += "<option value='"+i.uniteId+"'>"+ i.UniteSymbole+"</option>";
		}
		gid("unite").innerHTML = str;
		};
	xhr.send();
}
function initIngre(){
	let xhr = new XMLHttpRequest();
	xhr.open('get',"http://localhost:81/getIngredient",true);
	xhr.onload =
		function x(){
		let rep = JSON.parse(xhr.responseText);
		let str="";
		for(let i of rep){
			str += "<option value='"+i.ingreId+"'>"+i.ingreNom+"</option>";
		}
		gid("ingredient").innerHTML=str;
		};
		xhr.send();
}
function initRecette(){
	let xhr= new XMLHttpRequest();
	xhr.open('get',"http://localhost:81/initRecette", true );
	xhr.onload =
		function x(){
			rep = JSON.parse(xhr.responseText);
		};
	xhr.send();
}
function initIngreRec(){
	let xhr= new XMLHttpRequest();
	xhr.open('get',"http://localhost:81/getRecette",true );
	xhr.onload =
		function x(){
		ingr = JSON.parse(xhr.responseText);
		};
	xhr.send();
}
function ajoutIngre(){ //fonction qui permet de creer plus de champs d'input quand on clique sur un boutton
	ing++;
	let elem = qs('#ingredient');
	let elem2 = qs('#unite');
	let elem3 = qs('#quantite');
	let clone = elem.cloneNode(true);
	let clone2 = elem2.cloneNode(true);
	let clone3 = elem3.cloneNode(true);
	clone.className ='ingredient';
	clone.id = 'ingredient'+ing;
	clone.name ='ingredient'+ing; // dans l'url sans ca on vois que ingredient ? peut etre enlever ?
	elem.after(clone);
	gid('ingredient'+ing).value ="";
		clone2.className = 'unite';
		clone2.id = 'unite'+ing;
		clone.name ='unite'+ing;// dans l'url sans ca on vois que ingredient ? peut etre enlever ?
		elem2.after(clone2);
			clone3.className ='quantite';
			clone3.id = 'quantite'+ing;
			clone3.name = 'quantite'+ing;// dans l'url sans ca on vois que ingredient ? peut etre enlever ?
			elem3.after(clone3);
			gid('quantite'+ing).value ="";
}
function affiRecette(){ // fonction qui sert a afficher les informations quand on selectionne un rhum dans une liste deroulante avec un onchange
   let xx = gid('rhumSel').value ;
   let y =  gid('rhum'+xx).innerText;
   gid('rhum').innerHTML = "<h2> Voici la liste d'ingrédient et la méthodologie pour le " + '<b>'+y + " </b> : </h2>";
   for(let x in rep ){
   	if(rep[x].nomNom === y ){
   		gid('alcool').innerHTML = "Alcool utilsé : "+ '<br>'  + '<b>' +rep[x].rhumQte + " "+ rep[x].rhumUnite + "  de " +rep[x].alcoolNom + " " + rep[x].alcoolDegre+ " °"+ '</b>';
   		gid('maceration').innerHTML = "Le temps de maceration de ce rhum est de :"+ '<br>'  +'<b>' + rep[x].rhumMacer + '</b>';
   		gid('prix').innerHTML = "Le prix du rhum est de : "+ '<br>'  + '<b>' + rep[x].rhumPrix + '</b>' + " €";
   		gid('deroulement').innerHTML = "Une description et aide pour effectuer la recette : "+ '<br>'  + '<b>' + rep[x].rhumDeroulement + '</b>';
   	}
   }
}
function affiIngredient(){ // fonction qui sert a afficher la liste des ingredients pour chaque rhums
	let xx = gid('rhumSel').value ;
	let y =  gid('rhum'+xx).innerText;
	for(let x in ingr){
		if(ingr[x].nomNom === y){
			gid('ingredient').innerHTML += '<br>' + " "+'<b>'+  ingr[x].ingreNom +"  "+  ingr[x].quantité +"  "+ingr[x].uniteNom +'</b>';
			console.log(xx+" ingredient")
		}
	}
}
function cleanIngre(){ // sert uniquement a vider la zone ingredient a chaque changement de selectionne pour eviter une accumulation d'ingredients residuels 
	gid('ingredient').innerHTML = " Voici la liste des ingredients : "
}

