local editor = {}
local insert = _G.insert(editor)

insert {
  "editorconfig/editorconfig-vim",
  config = [[vim.g.EditorConfig_exclude_patterns = {"fugitive://.*", "scp://.*"}]]
}

insert {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  config = function() require 'plugin.editor.treesitter' end
}
insert "nvim-treesitter/nvim-treesitter-textobjects"
insert "windwp/nvim-ts-autotag"

insert {
  "liuchengxu/vista.vim",
  config = function ()
    vim.g['vista#renderer#enable_icon'] = 1
    vim.g.vista_disable_statusline = 1
    vim.g.vista_default_executive = 'ctags'
    vim.g.vista_echo_cursor_strategy = 'floating_win'
    vim.g.vista_vimwiki_executive = 'markdown'
    vim.g.vista_executive_for = {
      vimwiki =  'markdown',
      pandoc = 'markdown',
      markdown = 'toc',
      lua = 'nvim_lsp',
      typescript = 'nvim_lsp',
      typescriptreact =  'nvim_lsp',
    }
    map_cmd("n|<leader>8", "Vista!!")
  end
}

-- comment
insert {
  'terrortylor/nvim-comment',
  config = function()
    require('nvim_comment').setup()
    map_cmd('n|<C-_>', 'CommentToggle')
  end
}
insert 'JoosepAlviste/nvim-ts-context-commentstring'

insert "tpope/vim-fugitive"
insert {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup {
      signs = {
        add          = {hl = "GitGutterAdd",          text = "▋"},
        change       = {hl = "GitGutterChange",       text = "▋"},
        delete       = {hl = "GitGutterDelete",       text = "▋"},
        topdelete    = {hl = "GitGutterDeleteChange", text = "▔"},
        changedelete = {hl = "GitGutterChange",       text  = "▎"}
      }
    }
  end,
  requires = {"nvim-lua/plenary.nvim", opt = true}
}

insert {
  "mg979/vim-visual-multi",
  config = function()
    var_tbl({
      VM_default_mappings = 0;
      VM_maps = {
        ["Add Cursor Down"] = '<A-n>';
        ["Add Cursor Up"] = '<A-p>';
      };
    })
  end
}

insert {
  'phaazon/hop.nvim',
  config = function()
    map_cmd('n|<leader>w', 'HopWord')
    map_cmd('n|<leader>l', 'HopLine')
    map_cmd('n|<leader>/', 'HopPattern')
  end
}

insert {
  "andymass/vim-matchup",
  config = [[vim.g.matchup_matchparen_offscreen = {}]]
}

insert {
  "junegunn/vim-easy-align",
  config = function ()
    map("n|ga", [[<Plug>(EasyAlign)]], { noremap = false })
    map("x|ga", [[<Plug>(EasyAlign)]], { noremap = false })
  end
}
insert {
  "blackCauldron7/surround.nvim",
  config = function()
    vim.g.surround_mappings_style = 'surround'
    require "surround".setup {}
  end
}
insert "vim-scripts/ReplaceWithRegister"

return editor
