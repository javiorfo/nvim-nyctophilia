-- ###########################################################
-- # Maintainer: System Malt                                 #
-- # URL:        https://github.com/systemmalt/nvim-nyctovim #
-- ###########################################################

local util = require'nyctovim.util'

-- Integration with Lualine
local function set_lualine_colors(highlights)
    local base = {
        a = { bg = highlights.hi_26.bg, fg = highlights.hi_6.fg, gui = 'bold' },
        b = { bg = highlights.hi_1.bg, fg = highlights.hi_1.fg },
        c = { bg = highlights.hi_15.bg, fg = highlights.hi_1.fg }
    }

    return {
        normal   = base,
        insert   = base,
        visual   = base,
        replace  = base,
        command  = base,
        inactive = base
    }
end

-- Integration with NvimTree
local function set_nvim_tree_colors(highlights)
    util.highlightAll{
        NvimTreeRootFolder       = highlights.hi_13,
        NvimTreeSymlink          = highlights.hi_1,
        NvimTreeFolderName       = highlights.hi_5,
        NvimTreeFolderIcon       = highlights.hi_6,
        NvimTreeEmptyFolderName  = highlights.hi_5,
        NvimTreeOpenedFolderName = highlights.hi_5,
        NvimTreeExecFile         = highlights.hi_1,
        NvimTreeOpenedFile       = highlights.hi_1,
        NvimTreeSpecialFile      = highlights.hi_1,
        NvimTreeImageFile        = highlights.hi_1,
        NvimTreeMarkdownFile     = highlights.hi_1,
        NvimTreeIndentMarker     = highlights.hi_1,
        NvimTreeStatusLineNC     = highlights.hi_1,
        NvimTreeStatusLine       = highlights.hi_15
    }
end

local function set_nerd_tree_colors(highlights)
    util.highlightAll{
        NERDTreeDir      = highlights.hi_6,
        NERDTreeDirSlash = highlights.hi_6,
        NERDTreeOpenable = highlights.hi_6,
        NERDTreeClosable = highlights.hi_6,
        NERDTreeUp       = highlights.hi_3
    }
end

return {
    build = function(highlights)
        util.highlightAll(
            require'nyctovim.groups'.set_groups(highlights)
        )
        require'nyctovim.syntax.javascript'
        require'nyctovim.syntax.haskell'
        require'nyctovim.syntax.json'
        require'nyctovim.syntax.sql'
        require'nyctovim.syntax.scala'

        pcall(function()
            require'lualine'.setup{
                options = {
                    theme = set_lualine_colors(highlights)
                }
            }
        end)

        set_nvim_tree_colors(highlights)
        set_nerd_tree_colors(highlights)
    end
}


