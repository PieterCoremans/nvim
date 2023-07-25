local map = vim.keymap.set

vim.api.nvim_create_autocmd({ "FileType " }, {
  pattern = { "lua", "sql" },
  callback = function()
 -- Lua/SQL comment/uncomment line
  map("n", "<leader>lc", function()
      local linestart = GetStart() if linestart == "--" then return "0xxx" else return "0i-- <Esc>" end
  end, { expr = true })

 -- Lua/SQL comment/uncomment block
  map("n", "<leader>pc", function()
      local linestart = GetStart() if linestart == "-- " then return "<C-v>}k:norm 0xxx <Esc>0j" else return "<C-v>}k:norm 0i-- <Esc>0j" end
  end, { expr = true })

end,
})

vim.api.nvim_create_autocmd({ "FileType " }, {
  pattern = { "python" },
  callback = function()
    -- Run python script with F9
    vim.cmd [[
        nnoremap <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
        inoremap <buffer> <F9> <Esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
    ]]
    
    -- Python comment/uncomment line
  map("n", "<leader>lc", function()
      local linestart = GetStart() if linestart == "# " then return "0xx" else return "0i# <Esc>" end
  end, { expr = true })

    -- Python comment/uncomment block
  map("n", "<leader>pc", function()
      local linestart = GetStart() if linestart == "# " then return "<C-v>}k:norm 0xx <Esc>0j" else return "<C-v>}k:norm 0i# <Esc>0j" end
  end, { expr = true })

end,
})

