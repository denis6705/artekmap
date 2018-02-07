<!DOCTYPE HTML>
<html>
<head>
   <meta charset="utf-8">
   <title>Карта Артека</title>
</head>
<body>
   <canvas id="canvas" width="1600" height="900"> </canvas>
   <script>
	window.onload = function() {
	ctx = document.getElementById("canvas").getContext("2d");
	map = new Image();
	map.src = "/static/img/map.jpg";
	red = new Image();
	red.src = "/static/img/red.png";
	green = new Image();
	green.src = "/static/img/green.png";
	map.onload = function()
	{
		ctx.drawImage(map,0,0,1600,900);
		ctx.drawImage(red,1209,400,10,10);
		ctx.drawImage(green,820,414,10,10);
	}
	%for key in pings:
		console.log("{{key}}" + ":" + {{pings[key]}});
	%end
		
}
   </script>
</body>
</html>