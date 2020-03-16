window.onscroll = function() {stickyHeader()};

var headerbg = document.getElementById("topscroll");
var sticky = headerbg.offsetTop;

function stickyHeader() {
  if (window.pageYOffset > sticky) {
    headerbg.classList.add("sticky");
  } else {
    headerbg.classList.remove("sticky");
  }
}