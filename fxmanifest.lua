fx_version "cerulean"
game "gta5"
lua54 "yes"

ui_page "html/index.html"

server_scripts {
    'server/main.lua',
    'bridge/*.lua'
}

client_scripts {
    'client/main.lua'
}

files {
    'html/index.html',
    'html/script.js',
    'html/styles.css',
    'html/img/*.png'
}
