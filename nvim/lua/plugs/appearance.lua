local M = {}

function M.dashboard()
  vim.g.dashboard_default_executive = "telescope"
  vim.g.dashboard_custom_section = {
    new_file = {
      description = {"  New   File                              SPC t f"},
      command = "DashboardNewFile"
    },
    find_history = {
      description = {"  Recently opened files                   SPC f h"},
      command = "DashboardFindHistory"
    },
    find_file = {
      description = {"  Find  File                              SPC f f"},
      command = "DashboardFindFile"
    },
    find_word = {
      description = {"  Find  Word                              SPC f g"},
      command = "DashboardFindWord"
    },
    find_register = {
      description = {"  Find  Register                          SPC f r"},
      command = "DashboardJumpMark"
    }
  }
end

function M.nvim_tree()
  local tree_cb = require "nvim-tree.config".nvim_tree_callback
  var_tbl {
    nvim_tree_side = "left",
    nvim_tree_indent_markers = 1,
    nvim_tree_ignore = {".git", ".cache", ".idea", ".DS_Store"},
    nvim_tree_auto_open = 0,
    nvim_tree_auto_close = 1,
    nvim_tree_quit_on_open = 1,
    nvim_tree_follow = 1,
    nvim_tree_git_hl = 1,
    nvim_tree_tab_open = 1,
    nvim_tree_width_allow_resize = 1,
    nvim_tree_bindings = {
      ["l"] = tree_cb("edit"),
      ["h"] = tree_cb("close_node")
    },
    nvim_tree_icons = {
      default = "📄",
      symlink = "🔗",
      git = {
        unstaged = "✹",
        staged="✓",
        unmerged="",
        renamed="➜",
        untracked = "?",
        deleted="",
        ignored="◌"
      },
      folder = {
        default = "📁",
        open = "📂",
        symlink = "🔗"
      },
      lsp  = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      }
    }
  }

  map_cmd("n|<leader>1", "NvimTreeToggle")
end

function M.bufferline()
  local helpers = require "helpers"
  local bind_key = helpers.bind_key
  local map_cr = helpers.map_cr

 -- dump(packer_plugins["zephyr-nvim"])
 --  if not packer_plugins["zephyr-nvim"].loaded then
 --    vim.cmd [[packadd zephyr-nvim]]
 --  end

  require "bufferline".setup {
    options = {
      view = "multiwindow",
      mappings = false,
      always_show_bufferline = false,
      show_buffer_close_icons = false,
      diagnostics = "nvim_lsp"
    }
  }

  bind_key("n|[b", map_cr("BufferLineCyclePrev"):with_noremap():with_silent())
  bind_key("n|]b", map_cr("BufferLineCycleNext"):with_noremap():with_silent())
  bind_key("n|bh", map_cr("BufferLineCyclePrev"):with_noremap():with_silent())
  bind_key("n|bl", map_cr("BufferLineCycleNext"):with_noremap():with_silent())
  bind_key("n|b<", map_cr("BufferLineMovePrev"):with_noremap():with_silent())
  bind_key("n|b>", map_cr("BufferLineMoveNext"):with_noremap():with_silent())
  bind_key("n|gb", map_cr("BufferLinePick"):with_noremap():with_silent())
  bind_key("n|<BS>b", map_cr("Bdelete"):with_noremap():with_silent())
end

return M
