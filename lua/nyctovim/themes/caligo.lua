-- #########################################################
-- # Maintainer:   Javier Orfo                             #
-- # URL:          https://github.com/javi-7/nvim-nyctovim #
-- #########################################################

vim.api.nvim_command("hi clear")
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "caligo"

local highlights = {
        hi_1  = { fg = 15, bg = 0 },
        hi_2  = { fg = 15, bg = 0, gui = "bold" },
        hi_3  = { fg = 15, gui = "bold" },
        hi_4  = { fg = 15 },
        hi_5  = { fg = 249 },
        hi_6  = { fg = 249, gui = "bold" },
        hi_7  = { fg = 249 },
        hi_8  = { fg = 249, gui = "bold" },
        hi_9  = { fg = 249 },
        hi_10 = { fg = 252 },
        hi_11 = { fg = 0, bg = 229, gui = "bold" },
        hi_12 = { fg = 240 },
        hi_13 = { fg = 242, gui = "italic" },
        hi_14 = { fg = 249, bg = 0},
        hi_15 = { fg = 249, bg = 238, gui = "bold" },
        hi_16 = { fg = 252, gui = "bold" },
        hi_17 = { fg = 9, gui = "bold" },
        hi_18 = { fg = 9, bg = 0, gui = "italic" },
        hi_19 = { fg = 0, bg = 227 },
        hi_20 = { fg = 0, bg = 229 },
        hi_21 = { fg = 226, bg = 0 },
        hi_22 = { fg = 245, gui = "underline" },
        hi_23 = { fg = 195, gui = "italic" },
        hi_24 = { fg = 15, gui = "bold,italic" },
        hi_25 = { fg = 228, gui = "bold,italic" },
        hi_26 = { fg = 15, bg = 0 },
        hi_27 = { fg = 0, bg = 0 },
        hi_28 = { fg = 234, bg = 234 }
}

require'nyctovim.builder'.build(highlights)
