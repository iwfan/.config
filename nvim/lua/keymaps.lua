local helpers = require "helpers"

local bind_key = helpers.bind_key
local map_cmd = helpers.map_cmd
local map_cr = helpers.map_cr
local map_cu = helpers.map_cu
local map_arg = helpers.map_arg

vim.g.mapleader = " "

bind_key("n| ", map_cmd(""):with_noremap())
bind_key("x| ", map_cmd(""):with_noremap())

bind_key("n|q", map_cmd(""):with_noremap())
bind_key("n|Q", map_cmd("q"):with_noremap())

bind_key("i|<C-a>", map_cmd("<C-o>^"):with_noremap())
bind_key("c|<C-a>", map_cmd("<HOME>"):with_noremap())
bind_key("!|<C-b>", map_cmd("<Left>"):with_noremap())
bind_key("!|<C-d>", map_cmd("<Del>"):with_noremap())
bind_key("!|<C-e>", map_cmd("<END>"):with_noremap())
bind_key("!|<C-f>", map_cmd("<Right>"):with_noremap())
bind_key("!|<C-h>", map_cmd("<BS>"):with_noremap())
bind_key("i|<C-k>", map_cmd("<C-o>d$"):with_noremap())
bind_key("i|<C-s>", map_cmd([[empty(expand("%:t")) ? "\<C-o>:w\<Space>" : "<C-o>:w\<CR>"]]):with_noremap():with_expr())
bind_key("n|<C-s>", map_cmd([[empty(expand('%:t')) ? ":w\<Space>" : ":w\<CR>"]]):with_noremap():with_expr())
bind_key("i|<C-u>", map_cmd("<C-o>d^"):with_noremap())
bind_key("!|<C-v>", map_cmd("<C-r>*"):with_noremap())
bind_key("i|<C-z>", map_cmd("<C-o>u"):with_noremap())

bind_key("i|<C-j>", map_cmd([[("\<C-n>")]]):with_expr())
bind_key("i|<C-k>", map_cmd([[("\<C-p>")]]):with_expr())
bind_key("i|<C-c>", map_cmd("<ESC>"):with_noremap())

bind_key("n|<C-h>", map_cmd("<C-w>h"):with_noremap())
bind_key("n|<C-j>", map_cmd("<C-w>j"):with_noremap())
bind_key("n|<C-k>", map_cmd("<C-w>k"):with_noremap())
bind_key("n|<C-l>", map_cmd("<C-w>l"):with_noremap())

bind_key("n|<C-w><up>", map_cr("res +5"):with_noremap():with_silent())
bind_key("n|<C-w><down>", map_cr("res -5"):with_noremap():with_silent())
bind_key("n|<C-w><right>", map_cr("vertical resize +5"):with_noremap():with_silent())
bind_key("n|<C-w><left>", map_cr("vertical resize -5"):with_noremap():with_silent())

bind_key("v|<", map_cmd("<gv"):with_noremap())
bind_key("v|>", map_cmd(">gv"):with_noremap())
bind_key("n|<", map_cmd("<<"):with_noremap())
bind_key("n|>", map_cmd(">>"):with_noremap())

bind_key("n|<leader><backspace>", map_cmd('"_dd'):with_noremap())
bind_key("n|H", map_cmd("^"):with_noremap())
bind_key("v|H", map_cmd("^"):with_noremap())
bind_key("n|L", map_cmd("$"):with_noremap())
bind_key("v|L", map_cmd("$"):with_noremap())

bind_key("n|<C-S-up>", map_cmd(":m .-2<CR>=="):with_silent())
bind_key("n|<C-S-down>", map_cmd(":m .+1<CR>=="):with_silent())
bind_key("i|<C-S-up>", map_cmd("<Esc>:m .-2<CR>==gi"):with_silent())
bind_key("i|<C-S-down>", map_cmd("<Esc>:m .+1<CR>==gi"):with_silent())
bind_key("v|<C-S-up>", map_cmd(":m '<-2<CR>gv=gv"):with_silent())
bind_key("v|<C-S-down>", map_cmd(":m '>+1<CR>gv=gv"):with_silent())

bind_key("t|<C-h>", map_cmd([[<C-\><C-N><C-w>h]]):with_noremap())
bind_key("t|<C-j>", map_cmd([[<C-\><C-N><C-w>j]]):with_noremap())
bind_key("t|<C-k>", map_cmd([[<C-\><C-N><C-w>k]]):with_noremap())
bind_key("t|<C-l>", map_cmd([[<C-\><C-N><C-w>l]]):with_noremap())
bind_key("t|<Esc>", map_cmd([[<C-\><C-n>]]):with_noremap())

bind_key("n|<F3>", map_cu("PackerCompile"))
bind_key("n|<F4>", map_cu("PackerSync"))

bind_key("n|j", map_cmd("<Plug>(accelerated_jk_gj)"))
bind_key("n|k", map_cmd("<Plug>(accelerated_jk_gk)"))

bind_key("n|<leader>ff", map_cu("lua require('telescope.builtin').git_files()"))
bind_key("n|<leader>fa", map_cu("lua require('telescope.builtin').find_files()"))
bind_key("n|<leader>fb", map_cu("lua require('telescope.builtin').buffers()"))
bind_key("n|<leader>fg", map_cu("lua require('telescope.builtin').live_grep()"))
bind_key("n|<leader>fw", map_cu([[lua require('telescope.builtin').grep_string({ search = vim.fn.expand("<cword>")})]]))
bind_key("n|<leader>ft", map_cu("lua require('telescope.builtin').help_tags()"))
bind_key("n|<leader>fr", map_cu("lua require('telescope.builtin').registers()"))
bind_key("n|<leader>fh", map_cu("lua require('telescope.builtin').oldfiles()"))

bind_key("n|[b", map_cr("BufferLineCyclePrev"):with_noremap():with_silent())
bind_key("n|]b", map_cr("BufferLineCycleNext"):with_noremap():with_silent())
bind_key("n|b<", map_cr("BufferLineMovePrev"):with_noremap():with_silent())
bind_key("n|b>", map_cr("BufferLineMoveNext"):with_noremap():with_silent())
bind_key("n|gb", map_cr("BufferLinePick"):with_noremap():with_silent())
bind_key("n|<BS>b", map_cr("Bdelete"):with_noremap():with_silent())
