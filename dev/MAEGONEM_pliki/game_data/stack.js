function stack(){this.data=new Array();this.begin=0;this.end=0;this.nullvalue="";if(arguments[0]){this.limit=arguments[0]}else{this.limit=false}}stack.prototype.push=function(a){if(this.limit&&(this.limit<=this.size())){return}this.data[this.end]=a;this.end++};stack.prototype.pop=function(){if(this.begin>=this.end){return this.nullvalue}this.begin++;var a=this.data[this.begin-1];delete this.data[this.begin-1];if(this.begin==this.end){this.begin=0;this.end=0}return a};stack.prototype.size=function(){return this.end-this.begin};