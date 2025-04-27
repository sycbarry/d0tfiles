return {
    {
        'daneofmanythings/chalktone.nvim',
        priority = 1000,
        lazy = false,
        config = function()
            require('chalktone').setup()
        end
    },
    { "muchzill4/doubletrouble" },
    {
        "xero/miasma.nvim",
        lazy = false,
        priority = 1000,
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
