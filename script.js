window.onload = function() {
	ctx = document.getElementById("canvas").getContext("2d");
	map = new Image();
	map.src = "map.jpg";
	red = new Image();
	red.src = "red.png";
	green = new Image();
	green.src = "green.png";
	map.onload = () => 
	{
		ctx.drawImage(map,0,0,1600,900);
		ctx.drawImage(red,1209,400,10,10);
		ctx.drawImage(green,820,414,10,10);
	}
		
}