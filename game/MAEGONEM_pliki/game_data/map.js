function theMap(){var f=0;var g=0;var a=16;var d=16;var b=document.getElementById("objects");var c=document.createElement("DIV");this.id=-1;c.setAttribute("id","oMap");b.appendChild(c);this.loadMap=function(o){o=o.split(";");this.id=o[6];var m=global.path;var n=new Date(),l=n.getHours();if(global.rpg&&(this.id=="1")&&(l>21||l<6)){this.img="http://www.margonem.pl/obrazki/miasta/n/"+o[2]}else{this.img=m.server+m.maps+"/"+o[2]}this.name=o[3];this.pvp=parseInt(o[4]);this.battleground=o[5];a=Math.max(o[0],16);d=Math.max(o[1],16);this.loading();if(o[7].length>1){this.water=new Array();w=o[7].split("|");for(var k=0;k<w.length;k++){ww=w[k].split(",");for(var h=ww[0]-1;h<=ww[1];h++){this.water[h+256*ww[2]]=ww[3]}}}else{this.water=false}};this.loading=function(){if((il.nLoaded+il.nErrors)!=il.imgList.length){setTimeout("map.loading()",100);return}document.getElementById("loading").innerHTML="<span>Ładowanie mapy (ok. 1MB)<br>Jeśli ładowanie się zatrzymało naciśnij F5.</span>";log("Loading: "+this.img);il.preload(this.img,"onload",this)};this.left=function(){return f};this.top=function(){return g};this.width=function(){return a};this.height=function(){return d};this.onload=function(h){hide("loading",true);if((this.id==583||this.id==1061||this.id==1063)&&hero.lvl==1){show("oHelp",false)}iefix();if(h){log("Can't load map image: '"+this.img+"'",2);return}log("Map loaded");document.getElementById("oMap").style.backgroundImage="url("+this.img+")";this.center(hero.x,hero.y);hero.fixwater();var i=0;switch(this.pvp){case 0:i=3;this.pvpstr="Brak PvP";break;case 1:i=2;this.pvpstr="PvP na życzenie";break;case 2:i=0;this.pvpstr="PvP";break;case 3:i=3;this.pvpstr="Brak PvP";break;case 4:i=1;this.pvpstr="Arena";break}document.getElementById("pvpmode").style.backgroundPosition="0 -"+(i*17)+"px";addEvent(document.getElementById("pvpmode"),"mouseover",function(j){if(!j){var j=window.event}tip.show(j.clientX,j.clientY,"",map.pvpstr)});addEvent(document.getElementById("pvpmode"),"mouseout",function(j){tip.hide()})};this.redraw=function(){var h=document.getElementById("oMap");h.style.backgroundPosition=(-f*32)+"px "+(-g*32)+"px"};var e=function(i,j,h){if(i<j){return j}if(i>h){return h}return i};this.center=function(h,i){f=e(h-8,0,a-16);g=e(i-8,0,d-16);this.redraw()};this.moveto=function(h,i){if(h<f+4){f=Math.max(h-4,0)}if(h>f+a-4){f=Math.min(h+4,a)}if(i<g+4){g=Math.max(i-4,0)}if(i>g+d-4){g=Math.min(h+4,d)}this.redraw()}};