--insert helper
function _G.insert(tbl, el)
  if el then
    return table.insert(tbl, el)
  else
    return function(el)
      return _G.insert(tbl, el)
    end
  end
end
--list merge
function _G.list_merge(...)
  local tbl = {}
  for _, list in ipairs({ ... })
  do
    for _, item in ipairs(list)
    do
      table.insert(tbl, item)
    end
  end
  return tbl
end

--inspect stuff
function _G.dump(...)
  local objects = vim.tbl_map(vim.inspect, { ... })
  print(' === ')
  print(unpack(objects))
  print(' === ')
end

--make life easier
_G.g       = vim.g
_G.fn      = vim.fn
_G.exec    = vim.api.nvim_exec
_G.cmd     = vim.api.nvim_command
_G.var     = vim.api.nvim_set_var
_G.stdpath = vim.fn.stdpath('data')

--set vim option
function _G.opt(key, value)
  if pcall(vim.api.nvim_get_option, key) then
    vim.o[key] = value
  elseif pcall(vim.api.nvim_buf_get_option, 0, key) then
    vim.bo[key] = value
  else
    vim.wo[key] = value
  end
end

--variable
function _G.var_tbl(variable_table)
  for variable_name, value in pairs(variable_table)
  do
    var(variable_name, value)
  end
end

--mappings
function _G._map(mode_and_lhs, rhs, opts, fn)
  local options = {
    noremap = true;
    silent = true;
    expr = false;
    nowait = false;
  }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end

  local mode, lhs = mode_and_lhs:match("([^|]*)|?(.*)")
  fn(mode, lhs, rhs, options)
end

function _G.map(mode_and_lhs, rhs, opts)
  _G._map(mode_and_lhs, rhs, opts,
    function(mode, lhs, rhs, options)
      vim.api.nvim_set_keymap(mode, lhs, rhs, options)
    end
  )
end

function _G.map_cmd(mode_and_lhs, rhs, opts)
  _G.map(mode_and_lhs, string.format("<cmd>%s<CR>", rhs), opts)
end

function _G.buf_map_cmd(bufnr)
  return function(mode_and_lhs, rhs, opts)
    _G._map(mode_and_lhs, rhs, opts,
      function(mode, lhs, rhs, options)
        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, options)
      end
    )
  end
end

--autocmd
function _G.autocmd(event, filetype, command)
  vim.cmd(table.concat({
    'autocmd',
    event,
    filetype,
    command
  }, ' '))
end

--augroup
function _G.augroup(group_name, definition)
  vim.cmd("augroup " .. group_name)
  vim.cmd("autocmd!")

  for _, def in ipairs(definition)
  do
    local event, filetype, command = unpack(def)
    autocmd(event, filetype, command)
  end

  vim.cmd("augroup END")
end

_G.font_icon = {
  error   = ' ';
  warn    = ' ';
  hint    = ' ';
  info    = ' ';
  modifiy = ' ';
  add     = ' ';
  merge   = '';
  renamed = ' ';
  unknown = ' ';
  deleted = ' ';
  ignored = ' ';
  close   = ' ';
  edit    = '';
  line    = '│';
  line1   = '⏽';
  branch  = ' ';
  gear    = ' ';
  light   = '';
}

_G.emoji_icon = {
  error         = '🚫';
  warn          = '⚠️';
  hint          = '🌀';
  info          = 'ℹ️';
  light         = '💡';
  fire          = '🔥';
  fix           = '🔧';
  pin           = '📌';
  stop          = '🚧';
  gear          = '⚙️';
  search        = '🔎';
  branch        = '🔱';
  right         = '👉';
  close         = '❎';
  diamond       = '💠';
  file          = '📄';
  folder        = '📁';
  folder_opened = '📂';
  link          = '🔗';
}

