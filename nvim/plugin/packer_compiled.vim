" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/Users/f/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/f/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/f/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/f/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/f/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ReplaceWithRegister = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/ReplaceWithRegister"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\4\0\22\0\0296\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\b\0005\2\6\0005\3\5\0=\3\a\2=\2\t\0015\2\v\0005\3\n\0=\3\a\2=\2\f\0015\2\14\0005\3\r\0=\3\a\2=\2\15\0015\2\17\0005\3\16\0=\3\a\2=\2\18\0015\2\20\0005\3\19\0=\3\a\2=\2\21\1=\1\4\0K\0\1\0\18find_register\1\0\1\fcommand\22DashboardJumpMark\1\2\0\0009  Find  Register                          SPC f r\14find_word\1\0\1\fcommand\22DashboardFindWord\1\2\0\0009  Find  Word                              SPC f g\14find_file\1\0\1\fcommand\22DashboardFindFile\1\2\0\0009  Find  File                              SPC f f\17find_history\1\0\1\fcommand\25DashboardFindHistory\1\2\0\0009  Recently opened files                   SPC f h\rnew_file\1\0\0\16description\1\0\1\fcommand\21DashboardNewFile\1\2\0\0009  New   File                              SPC t f\29dashboard_custom_section\14telescope dashboard_default_executive\6g\bvim\0" },
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["far.vim"] = {
    commands = { "F", "Far", "Fardo" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/f/.local/share/nvim/site/pack/packer/opt/far.vim"
  },
  ["formatter.nvim"] = {
    commands = { "Format" },
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\2>\2\2\1=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\4\0\0\21--stdin-filepath\0\19--single-quote\1\0\2\nstdin\2\bexe\rprettierN\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\4\0\0\19--indent-count\3\2\f--stdin\1\0\2\nstdin\2\bexe\vluafmt0\0\0\2\0\2\0\0045\0\0\0004\1\0\0=\1\1\0L\0\2\0\targs\1\0\2\nstdin\2\bexe\ngofmt�\1\1\0\a\0\15\0\0303\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0004\5\3\0>\0\1\5=\5\6\0044\5\3\0>\0\1\5=\5\a\0044\5\3\0>\0\1\5=\5\b\0044\5\3\0>\0\1\5=\5\t\0044\5\3\0003\6\n\0>\6\1\5=\5\v\0044\5\3\0003\6\f\0>\6\1\5=\5\r\4=\4\14\3B\1\2\1K\0\1\0\rfiletype\ago\0\blua\0\20typescriptreact\15typescript\20javascriptreact\15javascript\1\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/f/.local/share/nvim/site/pack/packer/opt/formatter.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugs.galaxyline\frequire\0" },
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["git-messenger.vim"] = {
    commands = { "GitMessenger", "GitMessengerClose" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/f/.local/share/nvim/site/pack/packer/opt/git-messenger.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\5\0\22\0\0286\0\0\0009\0\1\0009\0\2\0\14\0\0\0X\0\4�6\0\3\0009\0\4\0'\2\5\0B\0\2\0016\0\6\0'\2\a\0B\0\2\0029\0\b\0005\2\20\0005\3\n\0005\4\t\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\3=\3\21\2B\0\2\1K\0\1\0\nsigns\1\0\1\23current_line_blame\2\17changedelete\1\0\2\ttext\b▎\ahl\20GitGutterChange\14topdelete\1\0\2\ttext\b▔\ahl\26GitGutterDeleteChange\vdelete\1\0\2\ttext\b▋\ahl\20GitGutterDelete\vchange\1\0\2\ttext\b▋\ahl\20GitGutterChange\badd\1\0\0\1\0\2\ttext\b▋\ahl\17GitGutterAdd\nsetup\rgitsigns\frequire\25packadd plenary.nvim\bcmd\bvim\vloaded\17plenary.nvim\19packer_plugins\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/f/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["incsearch-easymotion.vim"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/incsearch-easymotion.vim"
  },
  ["incsearch.vim"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/incsearch.vim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n�\5\0\0\t\0\23\0V6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0006\3\0\0'\5\4\0B\3\2\0029\3\5\0035\5\a\0005\6\6\0=\6\b\5B\3\2\1\18\3\1\0'\5\t\0\18\6\2\0'\b\n\0B\6\2\2\18\b\6\0009\6\v\6B\6\2\2\18\b\6\0009\6\f\6B\6\2\0A\3\1\1\18\3\1\0'\5\r\0\18\6\2\0'\b\14\0B\6\2\2\18\b\6\0009\6\v\6B\6\2\2\18\b\6\0009\6\f\6B\6\2\0A\3\1\1\18\3\1\0'\5\15\0\18\6\2\0'\b\16\0B\6\2\2\18\b\6\0009\6\v\6B\6\2\2\18\b\6\0009\6\f\6B\6\2\0A\3\1\1\18\3\1\0'\5\17\0\18\6\2\0'\b\18\0B\6\2\2\18\b\6\0009\6\v\6B\6\2\2\18\b\6\0009\6\f\6B\6\2\0A\3\1\1\18\3\1\0'\5\19\0\18\6\2\0'\b\20\0B\6\2\2\18\b\6\0009\6\v\6B\6\2\2\18\b\6\0009\6\f\6B\6\2\0A\3\1\1\18\3\1\0'\5\21\0\18\6\2\0'\b\22\0B\6\2\2\18\b\6\0009\6\v\6B\6\2\2\18\b\6\0009\6\f\6B\6\2\0A\3\1\1K\0\1\0\fBdelete\fn|<BS>b\19BufferLinePick\tn|gb\23BufferLineMoveNext\tn|b>\23BufferLineMovePrev\tn|b<\24BufferLineCycleNext\tn|]b\16with_silent\17with_noremap\24BufferLineCyclePrev\tn|[b\foptions\1\0\0\1\0\4\28show_buffer_close_icons\1\tview\16multiwindow\27always_show_bufferline\1\rmappings\1\nsetup\15bufferline\vmap_cr\rbind_key\fhelpers\frequire\0" },
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n�\2\0\0\4\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\2B\0\2\1K\0\1\0\thtml\1\0\1\tmode\15foreground\ttmux\1\0\1\nnames\1\bvim\1\0\1\nnames\2\vstylus\1\0\1\vrgb_fn\2\tsass\1\0\1\vrgb_fn\2\tscss\1\0\1\vrgb_fn\2\bcss\1\5\0\0\15javascript\20javascriptreact\15typescript\20typescriptreact\1\0\1\vrgb_fn\2\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    after_files = { "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_buffer.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_calc.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_emoji.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_luasnip.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_nvim_lsp.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_nvim_lua.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_omni.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_path.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_snippets_nvim.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_spell.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_tags.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_treesitter.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_ultisnips.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_vim_lsc.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_vim_lsp.vim", "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_vsnip.vim" },
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16plugs.compe\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/f/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\6\0\0\v\0\26\0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\2\4\0019\3\5\0019\4\6\0015\6\a\0005\a\b\0=\a\t\0065\a\v\0\18\b\0\0'\n\n\0B\b\2\2=\b\f\a\18\b\0\0'\n\r\0B\b\2\2=\b\14\a=\a\15\0065\a\16\0005\b\17\0=\b\18\a5\b\19\0=\b\20\a=\a\21\6B\4\2\1\18\4\2\0'\6\22\0\18\a\3\0'\t\23\0B\a\2\2\18\t\a\0009\a\24\aB\a\2\2\18\t\a\0009\a\25\aB\a\2\0A\4\1\1K\0\1\0\16with_silent\17with_noremap\19NvimTreeToggle\16n|<leader>1\20nvim_tree_icons\vfolder\1\0\3\fsymlink\b\topen\b\fdefault\b\bgit\1\0\5\runmerged\b\vstaged\b✓\runstaged\b✹\14untracked\6?\frenamed\b➜\1\0\2\fsymlink\b\fdefault\b\23nvim_tree_bindings\6h\15close_node\6l\1\0\0\tedit\21nvim_tree_ignore\1\5\0\0\t.git\v.cache\n.idea\14.DS_Store\1\0\t\21nvim_tree_follow\3\1\27nvim_tree_quit_on_open\3\1\25nvim_tree_auto_close\3\1\24nvim_tree_auto_open\3\0\29nvim_tree_indent_markers\3\1\19nvim_tree_side\tleft!nvim_tree_width_allow_resize\3\1\23nvim_tree_tab_open\3\1\21nvim_tree_git_hl\3\1\30parse_variable_from_table\vmap_cu\rbind_key\fhelpers\23nvim_tree_callback\21nvim-tree.config\frequire\0" },
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/f/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  smartim = {
    config = { "\27LJ\2\nI\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\28com.apple.keylayout.ABC\20smartim_default\6g\bvim\0" },
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/smartim"
  },
  ["tagalong.vim"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/tagalong.vim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\a\0\23\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\3\0006\4\0\0'\6\4\0B\4\2\0029\4\5\0049\4\6\4=\4\a\0036\4\0\0'\6\4\0B\4\2\0029\4\b\0049\4\6\4=\4\t\0036\4\0\0'\6\4\0B\4\2\0029\4\n\0049\4\6\4=\4\v\3=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\18\0005\5\17\0=\5\19\4=\4\20\3=\3\21\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\22\0'\2\16\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\22\0'\2\20\0B\0\2\1K\0\1\0\19load_extension\15extensions\16media_files\14filetypes\1\0\1\rfind_cmd\arg\1\5\0\0\bpng\twebp\bjpg\tjpeg\15fzy_native\1\0\0\1\0\2\28override_generic_sorter\1\25override_file_sorter\2\rdefaults\1\0\0\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\1\0\5\20selection_caret\t \18results_width\4��̙\3���\3\20prompt_position\btop\18prompt_prefix\n🔭 \21sorting_strategy\14ascending\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  undotree = {
    commands = { "UndotreeToggle" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/f/.local/share/nvim/site/pack/packer/opt/undotree"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-bbye"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-closetag"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-exchange"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-exchange"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-obsession"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-obsession"
  },
  ["vim-peekaboo"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-peekaboo"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-textobj-entire"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-textobj-entire"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-textobj-user"
  },
  ["vim-translator"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-translator"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  ["vista.vim"] = {
    commands = { "Vista" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/f/.local/share/nvim/site/pack/packer/opt/vista.vim"
  },
  ["zephyr-nvim"] = {
    loaded = true,
    path = "/Users/f/.local/share/nvim/site/pack/packer/start/zephyr-nvim"
  }
}

-- Config for: dashboard-nvim
try_loadstring("\27LJ\2\n�\5\0\0\4\0\22\0\0296\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\b\0005\2\6\0005\3\5\0=\3\a\2=\2\t\0015\2\v\0005\3\n\0=\3\a\2=\2\f\0015\2\14\0005\3\r\0=\3\a\2=\2\15\0015\2\17\0005\3\16\0=\3\a\2=\2\18\0015\2\20\0005\3\19\0=\3\a\2=\2\21\1=\1\4\0K\0\1\0\18find_register\1\0\1\fcommand\22DashboardJumpMark\1\2\0\0009  Find  Register                          SPC f r\14find_word\1\0\1\fcommand\22DashboardFindWord\1\2\0\0009  Find  Word                              SPC f g\14find_file\1\0\1\fcommand\22DashboardFindFile\1\2\0\0009  Find  File                              SPC f f\17find_history\1\0\1\fcommand\25DashboardFindHistory\1\2\0\0009  Recently opened files                   SPC f h\rnew_file\1\0\0\16description\1\0\1\fcommand\21DashboardNewFile\1\2\0\0009  New   File                              SPC t f\29dashboard_custom_section\14telescope dashboard_default_executive\6g\bvim\0", "config", "dashboard-nvim")
-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugs.galaxyline\frequire\0", "config", "galaxyline.nvim")
-- Config for: nvim-colorizer.lua
try_loadstring("\27LJ\2\n�\2\0\0\4\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\2B\0\2\1K\0\1\0\thtml\1\0\1\tmode\15foreground\ttmux\1\0\1\nnames\1\bvim\1\0\1\nnames\2\vstylus\1\0\1\vrgb_fn\2\tsass\1\0\1\vrgb_fn\2\tscss\1\0\1\vrgb_fn\2\bcss\1\5\0\0\15javascript\20javascriptreact\15typescript\20typescriptreact\1\0\1\vrgb_fn\2\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
-- Config for: nvim-tree.lua
try_loadstring("\27LJ\2\n�\6\0\0\v\0\26\0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\2\4\0019\3\5\0019\4\6\0015\6\a\0005\a\b\0=\a\t\0065\a\v\0\18\b\0\0'\n\n\0B\b\2\2=\b\f\a\18\b\0\0'\n\r\0B\b\2\2=\b\14\a=\a\15\0065\a\16\0005\b\17\0=\b\18\a5\b\19\0=\b\20\a=\a\21\6B\4\2\1\18\4\2\0'\6\22\0\18\a\3\0'\t\23\0B\a\2\2\18\t\a\0009\a\24\aB\a\2\2\18\t\a\0009\a\25\aB\a\2\0A\4\1\1K\0\1\0\16with_silent\17with_noremap\19NvimTreeToggle\16n|<leader>1\20nvim_tree_icons\vfolder\1\0\3\fsymlink\b\topen\b\fdefault\b\bgit\1\0\5\runmerged\b\vstaged\b✓\runstaged\b✹\14untracked\6?\frenamed\b➜\1\0\2\fsymlink\b\fdefault\b\23nvim_tree_bindings\6h\15close_node\6l\1\0\0\tedit\21nvim_tree_ignore\1\5\0\0\t.git\v.cache\n.idea\14.DS_Store\1\0\t\21nvim_tree_follow\3\1\27nvim_tree_quit_on_open\3\1\25nvim_tree_auto_close\3\1\24nvim_tree_auto_open\3\0\29nvim_tree_indent_markers\3\1\19nvim_tree_side\tleft!nvim_tree_width_allow_resize\3\1\23nvim_tree_tab_open\3\1\21nvim_tree_git_hl\3\1\30parse_variable_from_table\vmap_cu\rbind_key\fhelpers\23nvim_tree_callback\21nvim-tree.config\frequire\0", "config", "nvim-tree.lua")
-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
-- Config for: nvim-bufferline.lua
try_loadstring("\27LJ\2\n�\5\0\0\t\0\23\0V6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0006\3\0\0'\5\4\0B\3\2\0029\3\5\0035\5\a\0005\6\6\0=\6\b\5B\3\2\1\18\3\1\0'\5\t\0\18\6\2\0'\b\n\0B\6\2\2\18\b\6\0009\6\v\6B\6\2\2\18\b\6\0009\6\f\6B\6\2\0A\3\1\1\18\3\1\0'\5\r\0\18\6\2\0'\b\14\0B\6\2\2\18\b\6\0009\6\v\6B\6\2\2\18\b\6\0009\6\f\6B\6\2\0A\3\1\1\18\3\1\0'\5\15\0\18\6\2\0'\b\16\0B\6\2\2\18\b\6\0009\6\v\6B\6\2\2\18\b\6\0009\6\f\6B\6\2\0A\3\1\1\18\3\1\0'\5\17\0\18\6\2\0'\b\18\0B\6\2\2\18\b\6\0009\6\v\6B\6\2\2\18\b\6\0009\6\f\6B\6\2\0A\3\1\1\18\3\1\0'\5\19\0\18\6\2\0'\b\20\0B\6\2\2\18\b\6\0009\6\v\6B\6\2\2\18\b\6\0009\6\f\6B\6\2\0A\3\1\1\18\3\1\0'\5\21\0\18\6\2\0'\b\22\0B\6\2\2\18\b\6\0009\6\v\6B\6\2\2\18\b\6\0009\6\f\6B\6\2\0A\3\1\1K\0\1\0\fBdelete\fn|<BS>b\19BufferLinePick\tn|gb\23BufferLineMoveNext\tn|b>\23BufferLineMovePrev\tn|b<\24BufferLineCycleNext\tn|]b\16with_silent\17with_noremap\24BufferLineCyclePrev\tn|[b\foptions\1\0\0\1\0\4\28show_buffer_close_icons\1\tview\16multiwindow\27always_show_bufferline\1\rmappings\1\nsetup\15bufferline\vmap_cr\rbind_key\fhelpers\frequire\0", "config", "nvim-bufferline.lua")
-- Config for: smartim
try_loadstring("\27LJ\2\nI\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\28com.apple.keylayout.ABC\20smartim_default\6g\bvim\0", "config", "smartim")
-- Config for: telescope.nvim
try_loadstring("\27LJ\2\n�\4\0\0\a\0\23\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\3\0006\4\0\0'\6\4\0B\4\2\0029\4\5\0049\4\6\4=\4\a\0036\4\0\0'\6\4\0B\4\2\0029\4\b\0049\4\6\4=\4\t\0036\4\0\0'\6\4\0B\4\2\0029\4\n\0049\4\6\4=\4\v\3=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\18\0005\5\17\0=\5\19\4=\4\20\3=\3\21\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\22\0'\2\16\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\22\0'\2\20\0B\0\2\1K\0\1\0\19load_extension\15extensions\16media_files\14filetypes\1\0\1\rfind_cmd\arg\1\5\0\0\bpng\twebp\bjpg\tjpeg\15fzy_native\1\0\0\1\0\2\28override_generic_sorter\1\25override_file_sorter\2\rdefaults\1\0\0\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\1\0\5\20selection_caret\t \18results_width\4��̙\3���\3\20prompt_position\btop\18prompt_prefix\n🔭 \21sorting_strategy\14ascending\nsetup\14telescope\frequire\0", "config", "telescope.nvim")

-- Command lazy-loads
vim.cmd [[command! -nargs=* -range -bang -complete=file Format lua require("packer.load")({'formatter.nvim'}, { cmd = "Format", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Far lua require("packer.load")({'far.vim'}, { cmd = "Far", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Fardo lua require("packer.load")({'far.vim'}, { cmd = "Fardo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file GitMessengerClose lua require("packer.load")({'git-messenger.vim'}, { cmd = "GitMessengerClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file GitMessenger lua require("packer.load")({'git-messenger.vim'}, { cmd = "GitMessenger", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Vista lua require("packer.load")({'vista.vim'}, { cmd = "Vista", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file F lua require("packer.load")({'far.vim'}, { cmd = "F", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file UndotreeToggle lua require("packer.load")({'undotree'}, { cmd = "UndotreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'formatter.nvim'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'formatter.nvim'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'formatter.nvim'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'formatter.nvim'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'formatter.nvim'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'formatter.nvim'}, { ft = "json" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'formatter.nvim'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'formatter.nvim'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'formatter.nvim'}, { ft = "go" }, _G.packer_plugins)]]
  -- Event lazy-loads
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-compe'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'gitsigns.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'gitsigns.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd("augroup END")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
