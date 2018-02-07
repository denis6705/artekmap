<!DOCTYPE HTML>
<html>
<head>
   <meta charset="utf-8">
   <title>Карта Артека</title>
</head>
<body>
   <canvas id="canvas" width="4096" height="2160"> </canvas>
   <script>
	window.onload = function() {
	ctx = document.getElementById("canvas").getContext("2d");
	map = new Image();
	map.src = "/static/img/map3.png";
	red = new Image();
	red.src = "/static/img/red.png";
	green = new Image();
	green.src = "/static/img/green.png";
	map.onload = function()
	{
		ctx.drawImage(map,0,0,4096,2160);
		ctx.drawImage(red,1209,400,30,30);
		ctx.drawImage(green,820,414,30,30);
	}
	%for key in pings:
		console.log("{{key}}" + ":" + {{pings[key]}});
	%end
		
}
   </script>
</body>
</html>