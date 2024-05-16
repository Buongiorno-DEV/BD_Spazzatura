fx_version 'cerulean'
game 'gta5'

author 'BuongiornoDEV'
description 'BuongiornoDEV sistema di spazzatura'
version '1.0.0'


client_scripts {
	'Client/**.**'
}

server_scripts {
	'Server/**.**'
}

shared_scripts {
	'Config/**.**',
	'@ox_lib/init.lua'
}

lua54 'yes'