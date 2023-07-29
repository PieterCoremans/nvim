function ColorMyPencils(color)
	-- color = color or "desert"
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)
	-- transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- set all columns right of 80 as well and keep color grey 
    -- regardless of colortheme
    vim.cmd [[
        let &colorcolumn=join(range(81,999),",")
        highlight ColorColumn ctermbg=235 guibg=#2c2d27
    ]]


end

ColorMyPencils()

-- function CurrentLineInfo()
--     local linenr = vim.api.nvim_win_get_cursor(0)[1]
--     local line = vim.fn.getline(linenr)
--     local linestart = vim.fn.split(line)[1]
-- 
--      local curline = vim.api.nvim_buf_get_lines(
--          0, linenr - 1, linenr, false)[1]

--      print(string.format("Current line [%d] states:'%s' of which first char: '%s'",
--          linenr, line, linestart))
-- end
-- CurrentLineInfo()
