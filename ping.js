
ping = function (ip) {
	timeStart = new Date().getTime();
	socket = new Socket("wss:"+ip);
	ping = timeStart - new.Date().getTime();
	if (socket.readyState != 0) 
		return ping;
	return -1;
		
	