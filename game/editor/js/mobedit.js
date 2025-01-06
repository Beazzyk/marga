function dodajmoba(x,y){
var tekst = document.getElementById('grupa');
var grupa = tekst.value;
var tekst = document.getElementById('mob');
var mob = tekst.value;
$.ajax({
			type: "POST",
			url: "js/dodajmoba.php",
			data: {
      x: x,
      y: y,
      dodaj: mob,
      grupa: grupa
      },
			success: function(msg){
				if(msg){
                 
        } else {
           alert('Slot zajêty');
        }
      }
    });
}
function showCursorPos(e) {
    var b;
    var x;
    var y;
    if (!e) e = event;
    b = document.body;
    x = e.clientX + b.scrollLeft;
    y = e.clientY + b.scrollTop;
    alert(x + ' ' + y);
  }
