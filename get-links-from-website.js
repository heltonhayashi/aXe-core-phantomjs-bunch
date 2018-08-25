
var host = ''; 
var list= document.getElementsByTagName('a');
for (var i = 0; i < list.length; i++) {
    if (list[i].href && list[i].host == host){
        console.log(list[i].href);
    }
}