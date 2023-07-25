local let = vim.g
local set = vim.opt

-- Tabline settings
let['airline#extensions#tabline#enabled'] = 1
let['airline#extensions#tabline#left_sep'] = ''
let['airline#extensions#tabline#left_alt_sep'] = ''
let['airline#extensions#tabline#right_sep'] = ''
let['airline#extensions#tabline#right_alt_sep'] = ''
let['airline#extensions#tabline#formatter'] = 'unique_tail'
-- let['airline#extensions#branch#enabled'] = 1

-- Status bar settings
vim.cmd [[
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.colnr = ' ㏇:'
  let g:airline_symbols.colnr = ' ℅:'
  let g:airline_symbols.colnr = 'c.'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.linenr = ' ␊:'
  let g:airline_symbols.linenr = ' ␤:'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.linenr = ' '
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.maxlinenr = ' '
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = 'Ɇ'
  let g:airline_symbols.notexists = '∄'
  let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.colnr = ' ℅:'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ' :'
  let g:airline_symbols.linenr = ' '
  let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.dirty='⚡'

  let g:airline#extensions#branch#enabled = 1
]]
--   let g:airline_section_b       (hunks, branch)[*]

let.airline_powerline_fonts = 1
let.airline_left_sep = ''
let.airline_right_sep = ''
let.airline_theme = 'onedark'

-- set.showtabline = 2

vim.cmd('set noshowmode')
-- vim.cmd "set noshowmode"

