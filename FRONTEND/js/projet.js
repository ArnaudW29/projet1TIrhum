/* ARNAUD WAETERMANS */
"use strict";

function initNom(){
	let xhr= new XMLHttpRequest();
	xhr.open('get',"http://localhost:81/getNom", true);
	xhr.onload = 
		function x(){
			let rep = JSON.parse(xhr.responseText);
			let id= "";
			let str="";
			for(let i of rep){
				id++;
				str += "<option value='"+i.nomId+"'>"+ i.nomNom +"</option>";
				console.log(id);
			}
			gid("rhumSel").innerHTML = str;
		};
	xhr.send();
}
