local map = vim.keymap.set

function GetStart()
    local linenr = vim.api.nvim_win_get_cursor(0)[1]
    local line = vim.fn.getline(linenr)
    local start = string.sub(line, 1, 2)
    return start
end

-- function TestToggle()
--     local linestart = GetStart()
--     print(linestart)
--     print(#linestart)
--     print(type(linestart))
--     if linestart == "--" then
--         print("0xxx")
--         return "0xxx"
--     else
--         print("0i--<Esc>")
--         return "0i-- <Esc>"
--      end
-- end
--
-- map("n", "<leader>c", function()
--     local linestart = GetStart() if linestart == "--" then return "0xxx" else return "0i-- <Esc>" end
-- end, { expr = true })


-- function CurrentLineInfo()
--     local linenr = vim.api.nvim_win_get_cursor(0)[1]
--     local line = vim.fn.getline(linenr)
--     local linestart = vim.fn.split(line)[1]

--      local curline = vim.api.nvim_buf_get_lines(
--          0, linenr - 1, linenr, false)[1]

--      print(string.format("Current line [%d] states:'%s' of which first char: '%s'",
--          linenr, line, linestart))
-- end
-- CurrentLineInfo()

