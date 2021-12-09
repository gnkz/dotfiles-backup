require("lualine").setup {
    options = {theme = "catppuccin"},
    sections = {
        lualine_a = {{"mode", lower = true}},
        lualine_b = {{"filename", file_status = true, full_path = true}, "g:coc_status"},
        lualine_c = {},
        lualine_x = {"filetype"},
        lualine_y = {{"branch", icon = ""}, "diff", "progress"},
        lualine_z = {"location"}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {"location"},
        lualine_y = {},
        lualine_z = {}
    }
}
