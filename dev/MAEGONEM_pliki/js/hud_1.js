function pokaz_hp(){
var a = document.getElementById('oTip2');
a.style.display = "block";
}
function schowaj_hp(){
var a = document.getElementById('oTip2');
a.style.display = "none";
}
function pokaz_exp(){
var a = document.getElementById('oTip3');
a.style.display = "block";
}
function schowaj_exp(){
var a = document.getElementById('oTip3');
a.style.display = "none";
}
function pokaz_quest(){
var a = document.getElementById('oQuests');
a.style.display = "block";
}
function schowaj_quest(){
var a = document.getElementById('oQuests');
a.style.display = "none";
}
function pokaz_item(item_id){
var a = document.getElementById(item_id);
a.style.display = "block";
}
function schowaj_item(item_id){
var a = document.getElementById(item_id);
a.style.display = "none";
}
function pokaz_npc(item_id){
var a = document.getElementById(item_id);
a.style.display = "block";
}
function schowaj_npc(item_id){
var a = document.getElementById(item_id);
a.style.display = "none";
}
function pokaz_ekwipunek(){
var a = document.getElementById('bag');
a.style.display = "block";
var b = document.getElementById('bagback');
b.style.display = "block";
var c = document.getElementById('chat');
c.style.display = "none";
var d = document.getElementById('eqbutton');
d.onclick = "schowaj_ekwipunek()";
}
function schowaj_ekwipunek(){
var a = document.getElementById('bag');
a.style.display = "none";
var b = document.getElementById('bagback');
b.style.display = "none";
var c = document.getElementById('chat');
c.style.display = "block";
var d = document.getElementById('eqbutton');
d.onclick = "pokaz_ekwipunek()";
}


function sklep_pokaz(id){
     	$.ajax({
			type: "POST",
			url: "js/sklep.php",
			data:"id="+id,
			success: function(msg){
				if(msg){
            $('#shop').css("display","block");
            $('#shop').html(msg);
            shop = id;
        }
    }
  });
}

function wyloguj(){
           $.ajax({
		type: "POST",
		url: "js/wyloguj.php",
		data: "",
		success: function(msg){
		if(msg){
				location.reload();
			}

		}
	});
}

function kup_przedmiot(id,cena){
     	$.ajax({
			type: "POST",
			url: "js/kup.php",
			data:"id="+id+"&cena="+cena,
			success: function(msg){
				if(msg){
              $.ajax({
		type: "POST",
		url: "js/gracz-items.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#bag').html(msg);
			}

		}
	});
	$.ajax({
		type: "POST",
		url: "js/div-gold.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#gold').html(msg);
			}

		}
	});
  
	$.ajax({
		type: "POST",
		url: "js/dead.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#dazedleft').html(msg);
        $('div#dazed').css("display","block");
			} else {
        $('div#dazed').css("display","none");
      }

		}
	});
        }
    }
  });
}

function zamknij_sklep(){
var a = document.getElementById('shop');
a.style.display = 'none';
shop = 0;
}

function zdejmij(strona){
     	$.ajax({
			type: "POST",
			url: "js/zdejmij.php",
			data:"typ="+strona,
			success: function(msg){
				if(msg){
            
              $.ajax({
		type: "POST",
		url: "js/div-lpanel.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#lpanel').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/div-base3.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#base3').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/hud1.php",
		data: "",
		success: function(msg){
		if(msg){
				$('a#exphud').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/hud2.php",
		data: "",
		success: function(msg){
		if(msg){
				$('a#hphud').html(msg);
			}

		}
	});
  
  $.ajax({
		type: "POST",
		url: "js/div-otip2.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#otip2').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/div-otip3.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#otip3').html(msg);
			}

		}
	});
  
    $.ajax({
		type: "POST",
		url: "js/gracz-items.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#bag').html(msg);
			}

		}
	});
  
  $.ajax({
		type: "POST",
		url: "js/ekwipunek.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#equip').html(msg);
			}

		}
	});
				       }
			  }
		  });
}

function zaloz(strona){
if(shop==0){
     	$.ajax({
			type: "POST",
			url: "js/zaloz.php",
			data:"id="+strona,
			success: function(msg){
				if(msg){
        if(msg=='teleport'){ document.location.href = 'game.php'; }
                  
                   	$.ajax({
		type: "POST",
		url: "js/div-lpanel.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#lpanel').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/div-base3.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#base3').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/hud1.php",
		data: "",
		success: function(msg){
		if(msg){
				$('a#exphud').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/hud2.php",
		data: "",
		success: function(msg){
		if(msg){
				$('a#hphud').html(msg);
			}

		}
	});
  
  $.ajax({
		type: "POST",
		url: "js/div-otip2.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#otip2').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/div-otip3.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#otip3').html(msg);
			}

		}
	});
  
    $.ajax({
		type: "POST",
		url: "js/gracz-items.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#bag').html(msg);
			}

		}
	});
  
  $.ajax({
		type: "POST",
		url: "js/ekwipunek.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#equip').html(msg);
			}

		}
	});
				       }
			  }
		  });
      } else {
      
      
      $.ajax({
			type: "POST",
			url: "js/sprzedaj.php",
			data:"id="+strona+"&sklep="+shop,
			success: function(msg){
				if(msg){
                  document.write();
              }
			  }
		  });
      
      	$.ajax({
		type: "POST",
		url: "js/div-gold.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#gold').html(msg);
			}

		}
	});
      
          $.ajax({
		type: "POST",
		url: "js/gracz-items.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#bag').html(msg);
			}

		}
	});
      
      }
}

function mobatak(tekst){  
    $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=mob",
		success: function(msg){
		if(msg){
              $('#battlein').html(msg);
               $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=czas",
		success: function(msg){
		if(msg){
              $('#battletime').html(msg);
		} else { alert('blad'); }

		}
	});
		}

		}
	});
}

 function squadwalcz(){  
    $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=squad",
		success: function(msg){
		if(msg){
              $('#battle_me').html(msg);
		} else { alert('blad'); }

		}
	});
 }
  function skillload(){  
    $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=loadskill",
		success: function(msg){
		if(msg){
              $('select#spell').html(msg);
		}

		}
	});
 }

function dofight(tekst){
  if(tekst == 'zamknij'){  
    $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=zamknij",
		success: function(msg){
		if(msg){
              alert(msg);
		} else { 
            $('#battle').css("display","none");
    }

		}
	});
 }
 if(tekst == 'laduj'){  
    $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=laduj",
		success: function(msg){
		if(msg){
              $('#battlein').html(msg);
              dofight('laduje');
		} else { alert('blad'); }

		}
	});
 }
 if(tekst == 'laduje'){  
    $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=laduje",
		success: function(msg){
		if(msg){
              $("#battleplace").html(msg);
		} else { alert('blad'); }

		}
	});
 }
 if(tekst == 'czas'){  
    $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=czas",
		success: function(msg){
		if(msg){
              $('#battletime').html(msg);
		} else { alert('blad'); }

		}
	});
 }
 if(tekst == 'move'){
          $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=move",
		success: function(msg){
		if(msg){
              $('#battlein').html(msg);
               $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=czas",
		success: function(msg){
		if(msg){
              $('#battletime').html(msg);
		} else { alert('blad'); }

		}
	});
		} else { mobatak(tekst); }

		}
	});
 }
 if(tekst == 'useskill'){
 var a = document.getElementById('spell');
 var czar = a.options.value;
        $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=useskill&skill="+czar,
		success: function(msg){
		if(msg){
              $('#battlein').html(msg);
               $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=czas",
		success: function(msg){
		if(msg){
              $('#battletime').html(msg);
		} else { alert('blad'); }

		}
	});
		} else { mobatak(tekst); }

		}
	});
 }
 if(tekst == 'attack'){  
    $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=attack",
		success: function(msg){
		if(msg){
              $('#battlein').html(msg);
               $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=czas",
		success: function(msg){
		if(msg){
              $('#battletime').html(msg);
		} else { alert('blad'); }

		}
	});
		} else { mobatak(tekst); }

		}
	});
 }
 $.ajax({
		type: "POST",
		url: "js/hud1.php",
		data: "",
		success: function(msg){
		if(msg){
				$('a#exphud').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/hud2.php",
		data: "",
		success: function(msg){
		if(msg){
				$('a#hphud').html(msg);
			}

		}
	});
  
  $.ajax({
		type: "POST",
		url: "js/div-otip2.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#otip2').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/div-otip3.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#otip3').html(msg);
			}

		}
	});
    $.ajax({
		type: "POST",
		url: "js/gracz-items.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#bag').html(msg);
			}

		}
	});
  
  	$.ajax({
		type: "POST",
		url: "js/wyjscia.php",
		data: "",
		success: function(msg){
		if(msg){
				$('#oMap').html(msg);
			}

		}
	});
  squadwalcz();
  skillload();
}

function walczt(id,id2){
    $.ajax({
		type: "POST",
		url: "js/walkaturowa.php",
		data: "id="+id+"&id2="+id2,
		success: function(msg){
		if(msg){
             $('#battle').css("display","block");
             dofight('laduj');
             dofight('czas');
             sesjawalka(id);
		} else { $alert('Blad'); }

		}
	});
}

function walcz(id,id2){
    $.ajax({
		type: "POST",
		url: "js/walcz1.php",
		data: "id="+id+"&id2="+id2,
		success: function(msg){
		if(msg){
				alert(msg);    
  $.ajax({
		type: "POST",
		url: "js/dead.php",
		data: "",
		success: function(msg){
		if(msg){
				$("b#dazedleft").html(msg);
        $("div#dazed").css("display","block");
			} else {
        $("div#dazed").css("display","none");
      }

		}
	});
        
        	$.ajax({
		type: "POST",
		url: "js/hud1.php",
		data: "",
		success: function(msg){
		if(msg){
				$('a#exphud').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/hud2.php",
		data: "",
		success: function(msg){
		if(msg){
				$('a#hphud').html(msg);
			}

		}
	});
  
  $.ajax({
		type: "POST",
		url: "js/div-otip2.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#otip2').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/div-otip3.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#otip3').html(msg);
			}

		}
	});
    $.ajax({
		type: "POST",
		url: "js/gracz-items.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#bag').html(msg);
			}

		}
	});
  
  	$.ajax({
		type: "POST",
		url: "js/wyjscia.php",
		data: "",
		success: function(msg){
		if(msg){
				$('#oMap').html(msg);
			}

		}
	});
  
			} else { $alert('Blad'); }

		}
	});
}

function pvp(id,id2){
    $.ajax({
		type: "POST",
		url: "js/pvp.php",
		data: "id="+id+"&id2="+id2,
		success: function(msg){
		if(msg){
				alert(msg);    
  $.ajax({
		type: "POST",
		url: "js/dead.php",
		data: "",
		success: function(msg){
		if(msg){
				$("b#dazedleft").html(msg);
        $("div#dazed").css("display","block");
			} else {
        $("div#dazed").css("display","none");
      }

		}
	});
        
        	$.ajax({
		type: "POST",
		url: "js/hud1.php",
		data: "",
		success: function(msg){
		if(msg){
				$('a#exphud').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/hud2.php",
		data: "",
		success: function(msg){
		if(msg){
				$('a#hphud').html(msg);
			}

		}
	});
  
  $.ajax({
		type: "POST",
		url: "js/div-otip2.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#otip2').html(msg);
			}

		}
	});

	$.ajax({
		type: "POST",
		url: "js/div-otip3.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#otip3').html(msg);
			}

		}
	});
    $.ajax({
		type: "POST",
		url: "js/gracz-items.php",
		data: "",
		success: function(msg){
		if(msg){
				$('div#bag').html(msg);
			}

		}
	});
  
  	$.ajax({
		type: "POST",
		url: "js/wyjscia.php",
		data: "",
		success: function(msg){
		if(msg){
				$('#oMap').html(msg);
			}

		}
	});
  
			} else { $alert('Blad'); }

		}
	});
}
function sesjawalka(id){
     $.ajax({
		type: "POST",
		url: "js/walkaladuj.php",
		data: "act=wpiszsesje&id="+id,
		success: function(msg){
		if(msg){
        dofight('laduje');
				dofight('laduj');
        dofight('czas');
			}

		}
	});
}
