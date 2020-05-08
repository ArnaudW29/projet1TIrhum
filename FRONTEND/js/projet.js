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
				str += "<option value='"+i.nomId+"'>"+ i.nomNom +"</option>";
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
		}
		xhr.send();
}
function ajoutIngre(){
	ing++;
	var elem = qs('#ingredient');
	var elem2 = qs('#unite');
	var elem3 = qs('#quantite');
	var clone = elem.cloneNode(true);
	var clone2 = elem2.cloneNode(true);
	var clone3 = elem3.cloneNode(true);
	clone.className ='ingredient';
	clone.id = 'ingredient'+ing;
	clone.name ='ingredient'+ing; // dans l'url sans ca on vois que ingredient ? peut etre enlever ?
	elem.after(clone);
	gid('ingredient'+ing).value ="";
		clone2.className = 'ingredient';
		clone2.id = 'unite'+ing;
		clone.name ='unite'+ing;// dans l'url sans ca on vois que ingredient ? peut etre enlever ?
		elem2.after(clone2);
			clone3.className ='ingredient';
			clone3.id = 'quantite'+ing;
			clone3.name = 'quantite'+ing;
			elem3.after(clone3);
			gid('quantite'+ing).value ="";
}
