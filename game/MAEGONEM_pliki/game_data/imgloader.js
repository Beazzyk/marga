function ImageLoader(){this.imgList=new Array;this.nLoaded=0;this.nErrors=0}ImageLoader.prototype.preload=function(a,c,d){var b=new Image;this.imgList[this.imgList.length]=b;b.onload=ImageLoader.prototype.onload;b.onerror=ImageLoader.prototype.onerror;b.onabort=ImageLoader.prototype.onabort;b.callBack=function(e){return d[c](e)};b.oImageLoader=this;b.bLoaded=false;b.src=a};ImageLoader.prototype.onload=function(){this.oImageLoader.nLoaded++;this.callBack(0);this.callBack=function(){}};ImageLoader.prototype.onerror=function(){this.oImageLoader.nErrors++;log(this.src,2);this.callBack(1)};ImageLoader.prototype.onabort=function(){this.oImageLoader.nErrors++;log(this.src,2);this.callBack(2)};ImageLoader.prototype.getsize=function(a){for(var b in this.imgList){if(this.imgList[b].src==a){return new Array(this.imgList[b].width,this.imgList[b].height)}}return false};