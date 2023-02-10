-- ##########################################################
-- # Maintainer: Mr. Charkuils                              #
-- # URL:        https://github.com/charkuils/nvim-nyctovim #
-- ##########################################################

vim.api.nvim_command("hi clear")
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "umbra"

local highlights = {
        hi_1  = { fg = 15, bg = 237 },
        hi_2  = { fg = 15, bg = 237, gui = "bold" },
        hi_3  = { fg = 15, gui = "bold" },
        hi_4  = { fg = 15 },
        hi_5  = { fg = 248 },
        hi_6  = { fg = 248, gui = "bold" },
        hi_7  = { fg = 248 },
        hi_8  = { fg = 248, gui = "bold" },
        hi_9  = { fg = 250 },
        hi_10 = { fg = 252 },
        hi_11 = { fg = 237, bg = 229, gui = "bold" },
        hi_12 = { fg = 240 },
        hi_13 = { fg = 244, gui = "italic" },
        hi_14 = { fg = 244, bg = 237 },
        hi_15 = { fg = 250, bg = 238, gui = "bold" },
        hi_16 = { fg = 252, gui = "bold" },
        hi_17 = { fg = 9, gui = "bold" },
        hi_18 = { fg = 9, bg = 237, gui = "italic" },
        hi_19 = { fg = 237, bg = 227 },
        hi_20 = { fg = 237, bg = 229 },
        hi_21 = { fg = 226, bg = 237 },
        hi_22 = { fg = 245, gui = "underline" },
        hi_23 = { fg = 159, gui = "italic" },
        hi_24 = { fg = 15, gui = "bold,italic" },
        hi_25 = { fg = 228, gui = "bold,italic" },
        hi_26 = { fg = 15, bg = 237 },
        hi_27 = { fg = 237, bg = 237 },
        hi_28 = { fg = 234, bg = 234 }
}

require'nyctovim.builder'.build(highlights)
