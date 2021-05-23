local lsp_status = require "lsp-status"

function LspStatus()
    if #vim.lsp.buf_get_clients() < 1 then return "" end

    return lsp_status.status()
end

require("lualine").setup {
    options = {theme = "tokyonight"},
    sections = {
        lualine_a = {{"mode", lower = true}},
        lualine_b = {
            {"filename", file_status = true, full_path = true}, "LspStatus()"
        },
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
