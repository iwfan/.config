" =========================
" === KeyMappings Setup ===
" =========================

" https://stackoverflow.com/a/42461580
map <CR> <Plug>(expand_region_expand)
vmap <S-CR> <Plug>(expand_region_shrink)

nnoremap <silent> <Leader>0 :FloatermToggle<CR>
tnoremap <silent> <Leader>0 <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <esc><esc> <C-\><C-n>:FloatermKill<CR>

nmap <silent> <Leader>1 <esc>:CocCommand explorer --toggle<cr>
nmap <silent> <Leader>2 <esc>:Vista coc<cr>
nmap <silent> <Leader>8 <esc>:UndotreeToggle<cr>
nmap <silent> <Leader>9 <esc>:tabe<CR>:-tabmove<CR>:term lazygit<CR>
