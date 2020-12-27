" 
" ███╗   ███╗██╗   ██╗██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
" ████╗ ████║╚██╗ ██╔╝██║   ██║██║████╗ ████║██╔══██╗██╔════╝
" ██╔████╔██║ ╚████╔╝ ██║   ██║██║██╔████╔██║██████╔╝██║
" ██║╚██╔╝██║  ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
" ██║ ╚═╝ ██║   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
" ╚═╝     ╚═╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
" Author:   Zi莱卷 <i.wangfancn@gmail.com>
" Github:   https://github.com/iwfan
" License:  MIT License


lua require 'settings'
lua require 'keymaps'

let VIM_SCRIPT_PATH = expand('<sfile>:p:h')
call helpers#source_dir(VIM_SCRIPT_PATH . '/general/plug-conf')

lua require 'plugins'
lua require 'plugs'
" lua require 'functions'
