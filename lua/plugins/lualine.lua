local config = function()
    require("lualine").setup {
        options = {
            theme = "catppuccin",
            section_separators = "",
            component_separators = "",
            globalstatus = true,
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {'filename'},
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },
    }
end

return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    config = config
}
