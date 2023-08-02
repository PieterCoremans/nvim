function ColorMyPencils(color)
    -- color = color or "rose-pine-moon"
    color = color or "catppuccin-frappe"
    vim.cmd.colorscheme(color)
    -- transparent background
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    -- set all columns right of 80 as well and keep color grey
    -- regardless of colortheme
    vim.cmd [[
        let &colorcolumn=join(range(81,999),",")
        " highlight ColorColumn ctermbg=235 guibg=#2c2d27
    ]]
end

ColorMyPencils()

