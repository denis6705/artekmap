window.onload = function() {
	ctx = document.getElementById("canvas").getContext("2d");
	map = new Image();
	map.src = "/static/img/map.jpg";
	red = new Image();
	red.src = "/static/img/red.png";
	green = new Image();
	green.src = "/static/img/green.png";
	map.onload = () => 
	{
		ctx.drawImage(map,0,0,1600,900);
		ctx.drawImage(red,1209,400,10,10);
		ctx.drawImage(green,820,414,10,10);
	}
		
}
//nodes = {
//	{name:"Хрустальный", 	ip: "172.20.255.10"},
//	{name:"Янтарный",		ip: "172.20.255.11"},
//	{name:"ФОК",			ip: "172.20.255.12"},
//	{name:"Морской",		ip: "172.20.255.20"},
//	{name:"ЦДО",			ip: "172.20.255.30"},
//	{name:"Вожатый",		ip: "172.20.255.40"}
//}
