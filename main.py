from bottle import *
from ping3 import ping
@get("/static/img/<filepath:re:.*\.(jpg|png|gif|ico|svg)>")
def img(filepath):
    return static_file(filepath, root="static/img")

@get("/static/js/<filepath:re:.*\.js>")
def js(filepath):
    return static_file(filepath, root="static/js")

nodes = {
	"Хрустальный"   : "172.20.255.10",
	"Янтарный"      : "172.20.255.11",
	"ФОК"           : "172.20.255.12",
	"Морской"       : "172.20.255.20",
	"ЦДО"           : "172.20.255.30",
	"Вожатый"       : "172.20.255.40",
	"Залупа"		: "172.20.20.20"
}

pings = dict()

for key in nodes:
	pings[key] = ping(nodes[key], 1)
	
	

@route('/')
def index():
	return template('index.tpl',pings=pings)

run(host='localhost', port=80)

