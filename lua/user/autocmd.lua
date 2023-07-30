local map = vim.keymap.set
local A = vim.api

-- vim.api.nvim_create_autocmd({ "FileType " }, {
--   pattern = { "lua", "sql" },
--   callback = function()
 -- Lua/SQL comment/uncomment line
  -- map("n", "<leader>cl", function()
  --     local linestart = GetStart() if linestart == "--" then return "0xxx" else return "0i-- <Esc>" end
  -- end, { expr = true })

 -- Lua/SQL comment/uncomment block
--   map("n", "<leader>cp", function()
--       local linestart = GetStart() if linestart == "-- " then return "<C-v>}k:norm 0xxx <Esc>0j" else return "<C-v>}k:norm 0i-- <Esc>0j" end
--   end, { expr = true })
--
-- end,
-- })

vim.api.nvim_create_autocmd({ "FileType " }, {
  pattern = { "python" },
  callback = function()
    -- Run python script with F9
    vim.cmd [[
        nnoremap <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
        inoremap <buffer> <F9> <Esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
    ]]

    -- Python comment/uncomment line
  -- map("n", "<leader>cl", function()
  --     local linestart = GetStart() if linestart == "# " then return "0xx" else return "0i# <Esc>" end
  -- end, { expr = true })

    -- Python comment/uncomment block
  -- map("n", "<leader>cp", function()
  --     local linestart = GetStart() if linestart == "# " then return "<C-v>}k:norm 0xx <Esc>0j" else return "<C-v>}k:norm 0i# <Esc>0j" end
  -- end, { expr = true })

end,
})

local num_au = A.nvim_create_augroup('CUSTOM', { clear = true })

-- Highlight the region on yank
A.nvim_create_autocmd('TextYankPost', {
    group = num_au,
    callback = function()
        vim.highlight.on_yank({ higroup = 'Visual' })
        -- This is a workaround for clipboard not working in WSL
        -- see https://github.com/neovim/neovim/issues/19204#issuecomment-1173722375
        -- if vim.fn.has('wsl') == 1 then
        --     vim.fn.system('clip.exe', vim.fn.getreg('"'))
        -- end
    end,
})

-- Remove useless stuff from the terminal window and enter INSERT mode
A.nvim_create_autocmd('TermOpen', {
    group = num_au,
    callback = function(data)
        if not string.find(vim.bo[data.buf].filetype, '^[fF][tT]erm') then
            A.nvim_set_option_value('number', false, { scope = 'local' })
            A.nvim_set_option_value('relativenumber', false, { scope = 'local' })
            A.nvim_set_option_value('signcolumn', 'no', { scope = 'local' })
            A.nvim_command('startinsert')
        end
    end,
})
