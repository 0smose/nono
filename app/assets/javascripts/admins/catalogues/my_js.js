   var scroll = document.getElementsByClassName("my-scroll");
    for (var o = 0; o < scroll.length; o++) {
      (scroll[o]).onclick = function() {
        
        window.scrollTo(0, 2000);
      }
    }