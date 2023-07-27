vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<leader>h", vim.cmd.nohl)

map("n", "<leader>a", "$")

-- Open netrw
map("n", "<leader>e", vim.cmd.Ex)

-- Save/close window
map("n", "<leader>w", vim.cmd.w)
map("n", "<leader>q", vim.cmd.q)

-- Go to next/previous buffer
-- map("n", "<leader>bn", vim.cmd.bn)
-- map("n", "<leader>bp", vim.cmd.bp)
map("n", "<leader>n", vim.cmd.bn)
map("n", "<leader>p", vim.cmd.bp)
map('n', '<leader>[', '<CMD>bp<CR>')
map('n', '<leader>]', '<CMD>bn<CR>')
map('n', '<Tab>', '<CMD>bn<CR>')
map('n', '<S-Tab>', '<CMD>bp<CR>')

-- List buffers
map("n", "<leader>l", "<cmd>Telescope buffers<CR>")

-- Close current buffer
map("n", "<leader>d", vim.cmd.bd)

-- Telescope keybinds
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fo', '<cmd>Telescope oldfiles<cr>')
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>')
map('n', '<leader>fs', '<cmd>Telescope current_buffer_fuzzy_find<cr>')

local builtin = require('telescope.builtin')
map('n', '<C-f>', builtin.git_files, {})
-- map('n', '<leader>fs', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)

-- Open terminal in horizontal split below
-- map("n", "<leader>t", ":below sp<CR>:term<CR><cmd>resize 10<cr>i")
map("n", "<leader>t", ":below sp<CR>:term<CR><cmd>resize 10<cr>")

-- In terminal insert mode, go back to normal mode/go back to script
map("t", "<C-n>", "<C-\\><C-N>")
map("t", "<C-\\>", "<C-\\><C-N><C-w>k") -- only works after <leader>t command

-- map Ctrl+{h,j,k,l} to navigate windows
-- from normal mode
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
-- from insert or terminal mode
map({"i", "t"}, "<C-h>", "<C-\\><C-N><C-w>h")
map({"i", "t"}, "<C-j>", "<C-\\><C-N><C-w>j")
map({"i", "t"}, "<C-k>", "<C-\\><C-N><C-w>k")
map({"i", "t"}, "<C-l>", "<C-\\><C-N><C-w>l")

-- Resize window
-- map({"n", "t"}, "<leader>rs", vim.cmd.resize 10)
map("n", "<leader>rs", "<cmd>resize 10<cr>")
map("n", "<leader>rm", "<cmd>resize 20<cr>")
map("n", "<leader>rl", "<cmd>resize<cr>")

-- Insert line below/above while staying in normal mode
map("n", "<leader>o", "o<Esc>")
map("n", "<leader>O", "O<Esc>")

--Close brackets without return
map('i', '(', '()<Left>')
map('i', '{', '{}<Left>')
map('i', '[', '[]<Left>')

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
-- map('n', '<C-j>', '<CMD>move .+1<CR>')
-- map('n', '<C-k>', '<CMD>move .-2<CR>')
-- map('x', '<C-j>', ":move '>+1<CR>gv=gv")
-- map('x', '<C-k>', ":move '<-2<CR>gv=gv")

-- Keep cursor in the middle of the page while doing page down/up
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Yank to "+ register
-- map({"n", "v"}, "<leader>y", '"+y')
-- Paste from to "+ register
-- map("n", "<leader>p", '"+p')

--Copy selected text to system clipboard (requires gvim installed):
--remap Ctrl+c to copy from vim to clipboard
map('v', '<C-c>', '"+y')
--remap Ctrl+x to cut from vim to clipboard
map('v', '<C-x>', '"+d')
--remap Ctrl+p to paste from clipboard to vim
map('v', '<C-p>', '"+p')

-- Keep paste buffer after paste
-- map("x", "<leader>p", "\"_dP")

-- Delete to black hole register
map({"n", "x"}, "x", '"_x')

-- Set Ctrl-c to Esc
map("i", "<C-c>", "<Esc>")

-- Make Q not register
map("n", "Q", "<nop>")

-- Surround word with
map("n", "<leader>sb", "viwc()<Esc>P")
map("n", "<leader>s\"", "viwc\"\"<Esc>P")
map("n", "<leader>s\'", "viwc\'\'<Esc>P")

-- Surround selection with
map("v", "<leader>sb", "c()<Esc>P")
map("v", "<leader>s\"", "c\"\"<Esc>P")
map("v", "<leader>s\'", "c\'\'<Esc>P")

-- Replace visually selected text in whole document with confirmation
map("v", "<C-r>", '"hy:%s/<C-r>h//gc<left><left><left>')

-- Search for visually selected text
vim.cmd [[
    vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>
]]

