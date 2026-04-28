return {
    {
        'daneofmanythings/chalktone.nvim',
        priority = 1000,
        lazy = false,
        config = function()
            require('chalktone').setup()
        end
    },
    {
        "rebelot/kanagawa.nvim"
    },
    { "muchzill4/doubletrouble" },
    {
        "xero/miasma.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "aliqyan-21/pomatia.nvim",
        priority = 1000,
        config = function()
            require("pomatia").setup({})
            vim.cmd.colorscheme("pomatia")
        end,
    },
    {
        "nyoom-engineering/oxocarbon.nvim"
        -- Add in any other configuration;
        --   event = foo,
        --   config = bar
        --   end,
    },
    {
        "wheat-thin-wiens/rei.nvim",
        priority = 1000,
        opts = {
            styles = {
                comments = { italic = true },
                keywords = {},
                identifiers = {},
                functions = { italic = false, bold = true },
                variables = { bold = true },
                booleans = { bold = true },
                loops = { italic = false }
            },
            integrations = {
                gitsigns = true,
                indent_blankline = true,
                lsp = true,
                lazy = true,
                mason = true,
                neogit = true,
                neotree = true,
                render_markdown = true,
                telescope = true, -- 'borderless' theme also available, leave as true for default theme
                treesitter = true,
                which_key = true
            },
            transparency = false, -- Enables / Disables background transparency
            terminal_colors = true,
            highlight_overrides = {}
        }
    },
}
