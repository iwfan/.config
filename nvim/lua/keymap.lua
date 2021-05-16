g.mapleader = ' '
map("n|<Space>", "")
map("x|<Space>", "")
map("n|q", "")
map("n|Q", "q")
map("n|<C-q>", "")

--[[ map("n|d", '"_d')
map("n|x", "d")
map("x|d", '"_d')
map("x|x", "d")
map("n|dd", '"_dd')
map("n|xx", "dd")
map("n|D", '"_D')
map("n|X", "D") ]]

map("n|k", [[(v:count == 0 ? 'gk' : 'k')]], { expr = true })
map("n|j", [[(v:count == 0 ? 'gj' : 'j')]], { expr = true })

map("i|<C-a>", "<C-o>^")
map("c|<C-a>", "<HOME>")
map("!|<C-b>", "<Left>")
map("!|<C-d>", "<Del>")
map("!|<C-e>", "<END>")
map("!|<C-f>", "<Right>")
map("!|<C-h>", "<BS>")
map("i|<C-k>", "<C-o>d$")
map("i|<C-u>", "<C-o>d^")
map("!|<C-v>", "<C-r>*")
map("i|<C-c>", "<ESC>")
map("i|<C-s>", [[empty(expand("%:t")) ? "\<C-o>:w\<Space>" : "<C-o>:w\<CR>"]], { expr = true })
-- map("n|<C-s>", [[empty(expand('%:t')) ? ":w\<Space>" : ":w\<CR>"]], { expr = true })
map("n|<C-q><C-g>", [[:lua fn.system({'open', 'https://google.com/search?q=' .. vim.fn.expand("<cword>")})<CR>]])
map("v|<C-q><C-g>", [[<ESC>gv"gy<ESC>:lua fn.system({'open', 'https://google.com/search?q=' .. vim.fn.getreg('g')})<CR>]])

map("n|<leader>a", "<Cmd>%y+<CR>")
map("n|<leader><BS>", '"_dd')
map("n|H", "^")
map("v|H", "^")
map("n|L", "$")
map("v|L", "$")

map("n|<C-h>", "<C-w>h")
map("n|<C-j>", "<C-w>j")
map("n|<C-k>", "<C-w>k")
map("n|<C-l>", "<C-w>l")
map_cmd("n|<C-w><up>", "res +5")
map_cmd("n|<C-w><down>", "res -5")
map_cmd("n|<C-w><right>", "vertical resize +5")
map_cmd("n|<C-w><left>", "vertical resize -5")

map("v|<", "<gv")
map("v|>", ">gv")
map("n|<", "<<")
map("n|>", ">>")

map("n|<A-k>", ":m .-2<CR>==")
map("n|<A-j>", ":m .+1<CR>==")
map("i|<A-k>", "<Esc>:m .-2<CR>==gi")
map("i|<A-j>", "<Esc>:m .+1<CR>==gi")
map("v|<A-k>", ":m '<-2<CR>gv=gv")
map("v|<A-j>", ":m '>+1<CR>gv=gv")

map("t|<C-h>", [[<C-\><C-N><C-w>h]])
map("t|<C-j>", [[<C-\><C-N><C-w>j]])
map("t|<C-k>", [[<C-\><C-N><C-w>k]])
map("t|<C-l>", [[<C-\><C-N><C-w>l]])
map("t|<C-o>", [[<C-\><C-N><C-o>]])
map("t|<C-n>", [[<C-\><C-N>]])
map("t|<Esc><Esc>", [[<C-\><C-N>]])
map("n|<C-w><C-t>", "<esc>:split<CR>:term<CR>")

map([[n|\s]], ":%s//g<left><left>")

map_cmd("n|<leader>0", "FloatermToggle")
map("t|<leader>0", [[<C-\><C-n>:FloatermToggle<CR>]])
map("t|<esc><esc> ",[[<C-\><C-n>:FloatermKill<CR>]])
map("n|<leader>9", "<esc>:tabe<CR>:-tabmove<CR>:term lazygit<CR>")
