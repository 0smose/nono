
    //  bootstrap menu 

    var a = document.getElementsByClassName("iterator");
    for (var i = 0; i < a.length; i++) {
      a[i].href = "#menu"+(i+1);
  }

  var b = document.getElementsByClassName("image");

  for (var e = 0; e <b.length; e++) {
   b[e].id = "menu" + (e + 1); 
}


 // ************************************** Modal ****************************************

// Get the image


var getImages = document.querySelectorAll(".carrd-img-top");
for (var modal = 0; modal < getImages.length; modal++) {
    getImages[modal].id = "myImg" + (modal + 1);
}


// get the modal


var getModal = document.querySelectorAll(".modal");



for (var m = 0;m<getModal.length;m++){
    getModal[m].id = "myModal" + (m +1);
}

// get the modal content

var getModalContent = document.getElementsByClassName('modal-content');
for (var d = 0; d<getModalContent.length; d++) {
    getModalContent[d].id =  "myModalContent" + (d +1);
}

// Get the <span> element that closes the modal
var mySpan = document.getElementsByClassName("close");
console.log(mySpan)


for (var i = 0; i<getImages.length; i++) {
	getImages[i].onclick = function() {
		getModal[i].style.display = "block";
		getModalContent[i].src = this.src;
      mySpan[i].onclick = function() {
      getModal[i].style.display = "none";
      }
	} 
		
}




