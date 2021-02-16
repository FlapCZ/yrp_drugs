fx_version 'adamant'
game 'gta5'

description 'yrp_drugs'
authot 'YourRolePlay Development'
version '0.9'

server_scripts {
	'@es_extended/locale.lua',
	'config/sv_config.lua',
	'server/server.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'config/cl_config.lua',
	'client/client.lua'
}

ui_page "html/ui.html"

files {
	"html/ui.html",
	"html/js/index.js",
	"html/css/style.css"
}

dependencies {
	'es_extended',
	'mythic_progbar'
}
