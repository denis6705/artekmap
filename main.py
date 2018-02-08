from bottle import *
from ping3 import ping
@get("/static/img/<filepath:re:.*\.(jpg|png|gif|ico|svg)>")
def img(filepath):
    return static_file(filepath, root="static/img")

@get("/static/js/<filepath:re:.*\.js>")
def js(filepath):
    return static_file(filepath, root="static/js")


	
	

@route('/')
def index():
	nodes = {
		"Хрустальный"   : ["172.20.255.10", 3790, 590],
		"Янтарный"      : ["172.20.255.11",	3780, 740],
		"ФОК"           : ["172.20.255.12",	3740, 970],
		"Морской"       : ["172.20.255.20",	3510, 1230],
		"ЦДО"           : ["172.20.255.30",	1700, 1300],
		"Вожатый"       : ["172.20.255.40",	2960, 260],
		"Залупа"		: ["172.20.20.20",  400,  400]
	}
	
	pings = dict()

	for key in nodes:
		pings[key] = []
		pings[key].append(ping(nodes[key][0], 1))
		if pings[key][0] == None : pings[key][0] = -1
		pings[key].append(nodes[key][1])
		pings[key].append(nodes[key][2])
	print(pings)
	
	return template('index.tpl',pings=pings)

run(host='localhost', port=80)

