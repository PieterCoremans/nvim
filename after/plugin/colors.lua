function ColorMyPencils(color)
	color = color or "desert"
	vim.cmd.colorscheme(color)
	-- transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

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
