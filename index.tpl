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
	//map.onload = function()
	setInterval(function()
	{
		ctx.drawImage(map,0,0,4096,2160);
		
		%for k in pings:
			%if pings[k][0] == -1:
				ctx.drawImage(red,{{pings[k][1]}},{{pings[k][2]}},30,30)
			%end
			%if pings[k][0] != -1:
				ctx.drawImage(green,{{pings[k][1]}},{{pings[k][2]}},30,30)
			%end
		%end
		
	}, 5000);
		
}
   </script>
</body>
</html>