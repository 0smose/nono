
    //  bootstrap menu 

    // var scroll = document.getElementsByClassName("overlay");
    // for (var o = 0; o < scroll.length; o++) {
    //   (scroll[o]).onclick = function() {
    //     window.scrollTo(0, 650);
    //   } 
    // }

    var a = document.getElementsByClassName("iterator");
    for (var i = 0; i < a.length; i++) {
      a[i].href = "#menu"+(i+1);
    }

    var b = document.getElementsByClassName("image");

    for (var e = 0; e <b.length; e++) {
     b[e].id = "menu" + (e + 1); 
   }


   $(document).ready(function() {
  $('.column-flex').magnificPopup({
    delegate: 'a', // child items selector, by clicking on it popup will open
    type:'image',
    gallery:{
    enabled:true
  }
  });
 
});

// back to top button

//Get the button
var mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 40 || document.documentElement.scrollTop > 40) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document

$('.js-btn').click(() => {
    $('html, body').animate({
        scrollTop: $('.navbar').offset().top
    }, 200);
});



    /*Scrolling effect on photo click  */
    
    $('.js--scroll').click(function () {
        $('html, body').animate({scrollTop: $('.js--scroll-target').offset().top}, 1000);
    });
  
    

 // ************************************** Modal ****************************************

// Get the image


// var getImages = document.querySelectorAll(".carrd-img-top");
// for (var modal = 0; modal < getImages.length; modal++) {
//   getImages[modal].id = "myImg" + (modal + 1);
// }


// // get the modal


// var getModal = document.getElementsByClassName("modal");
// console.log(getModal);

// for (var m = 0;m<getModal.length;m++){
//   getModal[m].id = "myModal" + (m +1);
// }

// // get the modal content

// var getModalContent = document.getElementsByClassName('modal-content');
// for (var d = 0; d<getModalContent.length; d++) {
//   getModalContent[d].id =  "myModalContent" + (d +1);
// }

// // Get the <span> element that closes the modal
// var mySpan = document.getElementsByClassName("close");



// for (var x = 0; x<getImages.length; x++) {
// 	getImages[x].onclick = function() {
//     for (var tg = 0; tg <getModal.length; tg++) {
//       getModal[tg].style.display = "block";
//       getModalContent[tg].src = this.src;
      
//       mySpan[tg].onclick = function() {
//         for (var l = 0;l<getModal.length;l++){
//           getModal[l].style.display = "none";
          
//         }
//       }
//     }
//   }
// }






