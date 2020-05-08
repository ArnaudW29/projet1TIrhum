"use strict";
let ing="";

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
function ajoutIngre(){
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
			clone3.name = 'quantite'+ing;
			elem3.after(clone3);
			gid('quantite'+ing).value ="";

}
let rep="";

function initRecette(valeur){
	let xhr= new XMLHttpRequest();
	xhr.open('get',"http://localhost:81/initRecette", true );
	xhr.onload =
		function x(){
			let rep = JSON.parse(xhr.responseText);
			let str="";
			for(let i of rep){
				str += "pour ce rhum on utilise cet alcool "+ valeur.alcoolNom+"";
			}
			gid("recette").innerHTML=str;
		};
	xhr.send();
}
function affiRecette(){
   var x = gid('rhumSel').value ;
   let y =  gid('rhum'+x).innerText;
   gid('rhum').innerHTML = "<h2> Voici la liste d'ingrédient et la méthodologie pour le " + '<b>'+y + " </b> : </h2>"
   console.log(y);
   console.log(x);
   initRecette(y);
}

