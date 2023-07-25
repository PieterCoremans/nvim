local map = vim.keymap.set

vim.api.nvim_create_user_command('Getstart',
    function()
        linenr = vim.api.nvim_win_get_cursor(0)[1]
        line = vim.fn.getline(linenr)
        start = vim.fn.split(line)[1]
        if start == "--" then 
            print("yes")
        else 
            print("no") 
        end
        return start
    end,
{})

vim.api.nvim_create_user_command('Toggle',
    function()
        linestart = vim.cmd.Getstart()
        print(linestart)
        if linestart == "--" then
            print("0xxx") 
            return "0xxx" 
        else 
            print("0i--<Esc>" )
            return "0i-- <Esc>" 
        end
end,
{})

map("n", "<leader>c", vim.cmd.Toggle())
-- map("n", "<leader>c", vim.cmd.Teststart())
-- map("n", "<leader>c", TestToggle(), {expr = true})

