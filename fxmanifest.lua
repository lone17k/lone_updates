fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'lone'
description 'Updates display made by Lone'
version '1.0.0'


shared_scripts {
	'config.lua',
}

client_scripts {
	'client/client.lua',
}

server_scripts {
	'server/server.lua'
}

ui_page 'ui/index.html'

files {
	'ui/index.html',
	'ui/js/script.js',
	'ui/css/*',
	'ui/imgs/*',
}

escrow_ignore {
 'config.lua',
}

