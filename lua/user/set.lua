local O = vim.opt
-- O.guicursor = ""

-- O.cursorline = true

O.nu = true
O.relativenumber = true

O.tabstop = 4
O.softtabstop = 4
O.shiftwidth = 4
O.expandtab = true

O.smartindent = true

O.wrap = false

O.hlsearch = true
O.incsearch = true

O.termguicolors = true

O.scrolloff = 8

O.updatetime = 50

O.colorcolumn = "80"
vim.cmd [[
    let &colorcolumn=join(range(81,999),",")
    " highlight ColorColumn ctermbg=235 guibg=#2c2d27
]]

-- vim.o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

-- Makes neovim and host OS clipboard play nicely with each other
vim.o.clipboard = 'unnamedplus'

-- Better buffer splitting
vim.o.splitright = true
vim.o.splitbelow = true

