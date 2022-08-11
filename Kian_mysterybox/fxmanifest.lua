fx_version 'cerulean'
game 'gta5'

dependency 'vrp'

shared_script 'config'

client_scripts {
	"lib/Proxy.lua",
	"lib/Tunnel.lua",
	"client.lua"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"server.lua"
}