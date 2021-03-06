"use strict";
let rep="";
let ingr="";
let ingreId="";
let nomId="";
function initNom(){
	let xhr= new XMLHttpRequest();
	xhr.open('get',"http://localhost:81/getNom", true);
	xhr.onload = 
		function x(){
			let rep = JSON.parse(xhr.responseText);
			nomId = JSON.parse(xhr.responseText);
			let str="";
			for(let i of rep){
				str += "<option value='"+i.nomId+"'  id='"+"rhum"+i.nomId+"'>"+ i.nomNom +"</option>";
			}
			gid("rhumSel").innerHTML = str;
		};
	xhr.send();
}
function initNom2(){
	let xhr= new XMLHttpRequest();
	xhr.open('get',"http://localhost:81/getNom", true);
	xhr.onload =
		function x(){
			nomId = JSON.parse(xhr.responseText);
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
		ingreId = JSON.parse(xhr.responseText);
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
 /* function ajoutIngre(id){ //fonction qui permet de creer plus de champs d'input quand on clique sur un boutton
	ing++;
	let elem = qs(id);
	let clone = elem.cloneNode(true);
	clone.className =id;
	clone.id = id+ing;
	clone.name =id+ing;
	elem.after(clone);
	gid(id+ing).value ="";
} */
function affiRecette(){ // fonction qui sert a afficher les informations quand on selectionne un rhum dans une liste deroulante avec un onchange
   let xx = gid('rhumSel').value ;
   let y =  gid('rhum'+xx).innerText;
   gid('rhum').innerHTML = "<h2> Voici la liste d'ingrédient et la méthodologie pour le " + '<b>'+y + " </b> : </h2>";
   for(let x in rep ){
   	if(rep[x].nomNom === y ){
   		gid('alcool').innerHTML = "Alcool utilsé : "+ '<br>'  + '<b>' +rep[x].rhumQte + " "+ rep[x].rhumUnite + "  de " +rep[x].alcoolNom + " " + rep[x].alcoolDegre+ " °"+ '</b>';
   		gid('maceration').innerHTML = "Le temps de maceration de ce rhum est de :"+ '<br>'  +'<b>' + rep[x].rhumMacer + '</b>';
   		gid('prix').innerHTML = "Le prix du rhum est de : "+ '<br>'  + '<b>' + rep[x].rhumPrix +  " €" +'</b>' ;
   		gid('deroulement').innerHTML = "Une description et aide pour effectuer la recette : "+ '<br>'  + '<b>' + rep[x].rhumDeroulement + '</b>';
   	}
   }
}
function affiRecetteId(id){ //affiche l'id d'une recette selectionner avec un onchange
	let xx = gid('rhumSel').value ;
	gid(id).value = xx;
}
function affiRecetteIdReverse(id,reverse) {
	let xx = gid(id).value;
	gid(reverse).value = xx
}
function maxId(id) {
	let max="";
	for(let x in rep ){
		max++
	}
	var input = gid(id);
	input.setAttribute("max",max);
}
function maxId2(id) {
	let max="";
	for(let x in nomId ){
		max++
	}
	var input = gid(id);
	input.setAttribute("max",max);
}function maxId3nomId(id) {
	let max="";
	for(let x in nomId ){
		max++
	}
	max += 1;
	var input = gid(id);
	input.setAttribute("max",max);
}
function maxIdIngre(id){
	let max="";
	for(let x in ingreId ){
		max++
	}
	max += 1;
	var input = gid(id);
	input.setAttribute("max",max);
}
function minId() {
	let min="";
	for(let x in nomId ){
		min++
	}
	min += 1;
	console.log(min);
	var input = gid('idnom');
	input.setAttribute("min",min);
}function minId2(Id) {
	let min="";
	for(let x in nomId ){
		min++
	}
	min += 1;
	console.log(min);
	var input = gid('id');
	input.setAttribute("value",min);
}
function minIdIngre(id){
	let min="";
	for(let x in ingreId ){
		min++
	}
	min += 1;
	var input = gid(id);
	input.setAttribute("min",min);
}
function idRecetteChanger(input1) {
	gid('idrecette').value = input1.value;
}
function idRecetteChanger2(input2) {
	gid('idrhum').value = input2.value;
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
function cleanIngre(){ // sert uniquement a vider la zone ingredient a chaque changement de selection pour eviter une accumulation d'ingredients residuels
	gid('ingredient').innerHTML = " Voici la liste des ingredients : "
}
function envoisIngre(nom,nomId){
	let xhr = new XMLHttpRequest();
	let url = `proc_insert_rhum?name=${nom}&idnom=${nomId}`;
	console.log(url);
	xhr.onload= function(){
		console.log(url);
	};
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && (xhr.status == 200 || xhr.status == 0)) {
			alert("Envoyé, reload la page."); // C'est bon \o/
		}
	};
	xhr.open('get', `proc_insert_rhum?name=${nom}&idnom=${nomId}`, true);
	xhr.onerror = function(){
		console.log("erreur")
	};
	xhr.send();
}
function envoisIngre2(ingredient,unite,quantite,idrecette){
	let xhr = new XMLHttpRequest();
	let url = 'proc_insert_ingredient?ingredient='+ingredient+'&unite='+unite+'&quantite='+quantite+'&idrecette='+idrecette;
	xhr.onload=
		function () {
		console.log(url);
	};
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && (xhr.status == 200 || xhr.status == 0)) {
			alert("Envoyé, reload la page."); // C'est bon \o/
		}
	};
	xhr.open('get','proc_insert_ingredient?ingredient='+ingredient+'&unite='+unite+'&quantite='+quantite+'&idrecette='+idrecette,true)
	xhr.onerror=function () {
		console.log("xhr error");
	};
xhr.send();
}
function envoisIngre3(ingredient,idingredient){
	let xhr = new XMLHttpRequest();
	let url ='proc_insert_ingredientId?ingredient='+ingredient+'&idingredient='+idingredient;
	xhr.onload =
		function() {
		console.log(url);
	};
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && (xhr.status == 200 || xhr.status == 0)) {
			alert("Envoyé, reload la page."); // C'est bon \o/
		}
	};
	xhr.open('get','proc_insert_ingredientId?ingredient='+ingredient+'&idingredient='+idingredient);
	xhr.onerror=function (){
		console.log("xhr error");
	};
	xhr.send();
}
function envoisIngre4(idnom,idrecette,alcool,quantiteA,uniteA,temps,prix,explication){
	let xhr = new XMLHttpRequest();
	let url = 'proc_insert_rhumModif?idnom='+idnom+'&idrecette='+idrecette+'&alcool='+alcool+'&uniteA='+uniteA+'&quantiteA='+quantiteA+'&temps='+temps+'&prix='+prix +'&explication='+explication;
	xhr.onload= function() {
		console.log(url);
	};
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && (xhr.status == 200 || xhr.status == 0)) {
			alert("Envoyé, reload la page."); // C'est bon \o/
		}
	};
	xhr.open('get','proc_insert_rhumModif?idnom='+idnom+'&idrecette='+idrecette+'&alcool='+alcool+'&quantiteA='+quantiteA+'&uniteA='+uniteA+'&temps='+temps+'&prix='+prix +'&explication='+explication,true)
	xhr.onerror = function (){
		console.log("xhr error");
	};
	xhr.send();
}
function EnvoisGroupBy(nbr){
	let xhr = new XMLHttpRequest();
	let url = 'groupby_recetteingre?cnt='+nbr;
	xhr.open('get', "groupby_recetteingre?cnt="+nbr,false);
	xhr.onload =
		function x() {
		console.log(url);
			let group = JSON.parse(xhr.responseText);
			let verif = group.length;
			let str = "";
			console.log(group);
			if (verif === 0){
				str= '<h2>'+"aucune recette avec "+'<b>'  + gid('nbr').value +" ingredients"+'</b></h2>';
			} else {
				for(let i of group){
					str +=  "<h2>" +" Le nom de la recette : " +"<b>"+ rep[i.recetteId-1].nomNom  + "</b></h2>"
				}
			}
			gid('groupbyNbr').innerHTML = str;
		};
	xhr.send();
}
function submitForm(){
	envoisIngre(gid('name').value,
		gid('idnom').value)
}
function submitForm2(){
	envoisIngre2(gid('ingredient').value,
		gid('unite').value,
		gid('quantite').value,
		gid('idrecette').value)
}
function submitForm3(){
	envoisIngre3(gid('ingredient2').value,
		gid('ingredientId').value)
}
function submitForm4(){
	envoisIngre4(gid('idrecette').value,
		gid('idrhum').value,
		gid('alcool').value,
		gid('quantiteA').value,
		gid('uniteA').value,
		gid('temps').value,
		gid('prix').value,
		gid('explication').value)
}
function submitForm5(){
	EnvoisGroupBy(gid('nbr').value)
}
function reloadP(){
	window.location.reload()
}
