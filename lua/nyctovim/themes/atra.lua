-- ##########################################################
-- # Maintainer: Mr. Charkuils                              #
-- # URL:        https://github.com/charkuils/nvim-nyctovim #
-- ##########################################################

vim.api.nvim_command("hi clear")
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "atra"

local highlights = {
        hi_1  = { fg = 248, bg = 232 },
        hi_2  = { fg = 248, bg = 232, gui = "bold" },
        hi_3  = { fg = 248, gui = "bold" },
        hi_4  = { fg = 248 },
        hi_5  = { fg = 240 },
        hi_6  = { fg = 240, gui = "bold" },
        hi_7  = { fg = 240 },
        hi_8  = { fg = 240, gui = "bold" },
        hi_9  = { fg = 248 },
        hi_10 = { fg = 252 },
        hi_11 = { fg = 232, bg = 229, gui = "bold" },
        hi_12 = { fg = 240 },
        hi_13 = { fg = 240, gui = "italic" },
        hi_14 = { fg = 240, bg = 232, gui = "bold" },
        hi_15 = { fg = 248, bg = 238, gui = "bold" },
        hi_16 = { fg = 252, gui = "bold" },
        hi_17 = { fg = 9, gui = "bold" },
        hi_18 = { fg = 9, bg = 232, gui = "italic" },
        hi_19 = { fg = 232, bg = 227 },
        hi_20 = { fg = 232, bg = 229 },
        hi_21 = { fg = 226, bg = 232 },
        hi_22 = { fg = 245, gui = "underline" },
        hi_23 = { fg = 238, gui = "italic" },
        hi_24 = { fg = 255, gui = "bold,italic" },
        hi_25 = { fg = 228, gui = "bold,italic" },
        hi_26 = { fg = 248, bg = 234 },
        hi_27 = { fg = 232, bg = 232 },
        hi_28 = { fg = 234, bg = 234 }
}

require'nyctovim.builder'.build(highlights)
