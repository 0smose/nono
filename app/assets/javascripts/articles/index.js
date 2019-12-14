 var clickId = document.getElementsByClassName("click");
 for (var id = 0 ; id <clickId.length; id++){
 	clickId[id].id = "clickId" +(id + 1);
 }

 var divId = document.getElementsByClassName("myDIV");
 for (var id = 0 ; id <divId.length; id++){
 	divId[id].id = "divId" +(id + 1);
 }

 var x = document.getElementsByClassName("click");

 var c = document.getElementsByClassName("myDIV");

 for (var i = 0 ; i < x.length ; i++) {
 	for (var a = 0; a < c.length; a++) {
 		x[a].onclick = function() {
 			if (this.nextElementSibling.style.display === "none") {
 				this.nextElementSibling.style.display = "block";
 			} else {
 				this.nextElementSibling.style.display = "none";
 			}
 		}	
 	}	
 }

