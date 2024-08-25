return {
    { "bluz71/vim-nightfly-colors" },
    {
        "sontungexpt/witch",
        priority = 1000,
        lazy = false,
        config = function(_, opts)
            -- require("witch").setup(opts)
        end,
    },
    {
        "0xstepit/flow.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require('flow').setup({
                transparent = true,       -- Set transparent background.
                fluo_color = "pink",      --  Fluo color: pink, yellow, orange, or green.
                mode = "normal",          -- Intensity of the palette: normal, bright, desaturate, or dark. Notice that dark is ugly!
                aggressive_spell = false, -- Display colors for spell check.
            })
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                styles = {
                    comments = { "italic" },
                    conditionals = { "bold" },
                    booleans = { "bold" },
                    types = { "bold" },
                    keywords = { "bold" },
                    functions = { "bold", "italic" },
                    strings = { "italic", "bold" },
                    decorators = { "italic", "bold" },
                    properties = { "italic", "bold" },
                    operators = { "italic", "bold" }
                }
            })
            -- vim.cmd.colorscheme "gruvbox"
            -- vim.cmd.colorscheme "retrobox"
            -- vim.cmd.colorscheme "midnight-desert"
            -- vim.cmd.colorscheme "jellybeans-nvim"
            -- vim.cmd.colorscheme "bluewery"

            -- vim.cmd.colorscheme "melange"
            -- vim.cmd.colorscheme "sorbet"
            -- vim.cmd.colorscheme "evergarden"
            -- vim.cmd.colorscheme "embark"
            --vim.cmd.colorscheme "bamboo"
            -- vim.cmd.colorscheme "kat.nwim"
            -- vim.cmd.colorscheme = "witch"
            vim.cmd.colorscheme "flow"
        end,
    },
    { 'katawful/kreative' },
    { 'katawful/kat.nvim',         as = "kat" },
    { 'sainnhe/sonokai' },
    { 'sainnhe/everforest' },
    { 'relastle/bluewery.vim',     as = 'bluewery' },
    { 'embark-theme/vim',          as = 'embark' },
    { 'whatyouhide/vim-gotham',    as = 'gotham' },
    {
        "ramojus/mellifluous.nvim",
        -- version = "v0.*", -- uncomment for stable config (some features might be missed if/when v1 comes out)
        config = function()
            --require("mellifluous").setup() -- optional, see configuration section.
            require("mellifluous").setup({
                dim_inactive = false,
                neutral = true,
                bg_contrast = "hard",
                color_set = "mellifluous",
                -- color_set = "alduin",
                -- color_set = "tender",
                -- color_set = "mountain",
                styles = { -- see :h attr-list for options. set {} for NONE, { option = true } for option
                    comments = { italic = true },
                    conditionals = {},
                    folds = {},
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {},
                    markup = {
                        headings = { bold = true },
                    },
                },
                transparent_background = {
                    enabled = false,
                    floating_windows = true,
                    telescope = true,
                    file_tree = true,
                    cursor_line = true,
                    status_line = false,
                },
                flat_background = {
                    line_numbers = false,
                    floating_windows = false,
                    file_tree = false,
                    cursor_line_number = false,
                },
                plugins = {
                    cmp = true,
                    gitsigns = true,
                    indent_blankline = true,
                    nvim_tree = {
                        enabled = true,
                        show_root = false,
                    },
                    neo_tree = {
                        enabled = true,
                    },
                    telescope = {
                        enabled = true,
                        nvchad_like = true,
                    },
                    startify = true,
                },
            })
            --vim.cmd("colorscheme mellifluous")
        end,
    },
    { 'rktjmp/lush.nvim',               requires = "rktjmp/lush.nvim" },
    { 'daneofmanythings/chalktone.nvim' },
    { 'metalelf0/jellybeans-nvim' },
    { "savq/melange-nvim" },
    {
        "CosecSecCot/midnight-desert.nvim",
        requires = "rktjmp/lush.nvim"
    },
    {
        'ribru17/bamboo.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('bamboo').setup {
                style = 'light',                     -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
                toggle_style_key = nil,              -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
                toggle_style_list = { 'multiplex' }, -- 'multiplex', 'light' }, -- List of styles to toggle between
                transparent = false,                 -- Show/hide background
                dim_inactive = false,                -- Dim inactive windows/buffers
                term_colors = true,                  -- Change terminal color as per the selected theme style
                ending_tildes = false,               -- Show the end-of-buffer tildes. By default they are hidden
                cmp_itemkind_reverse = false,        -- reverse item kind highlights in cmp menu

                -- Change code style ---
                -- Options are anything that can be passed to the `vim.api.nvim_set_hl` table
                -- You can also configure styles with a string, e.g. keywords = 'italic,bold'
                code_style = {
                    comments = { italic = true },
                    conditionals = { italic = true },
                    keywords = { italic = true, bold = true },
                    functions = {},
                    namespaces = { italic = true },
                    parameters = { italic = true },
                    strings = {},
                    variables = {},
                },

                -- Lualine options --
                lualine = {
                    transparent = true, -- lualine center bar transparency
                },

                -- Custom Highlights --
                colors = {},     -- Override default colors
                highlights = {}, -- Override highlight groups

                -- Plugins Config --
                diagnostics = {
                    darker = false,    -- darker colors for diagnostic
                    undercurl = true,  -- use undercurl instead of underline for diagnostics
                    background = true, -- use background color for virtual text
                },
            }
            require('bamboo').load()
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        variant = "dawn",      -- auto, main, moon, or dawn
        dark_variant = "dawn", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
            terminal = true,
            legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
            migrations = true,        -- Handle deprecated options automatically
        },

        styles = {
            bold = true,
            italic = true,
            transparency = false,
        },

        groups = {
            border = "muted",
            link = "iris",
            panel = "surface",

            error = "love",
            hint = "iris",
            info = "foam",
            note = "pine",
            todo = "rose",
            warn = "gold",

            git_add = "foam",
            git_change = "rose",
            git_delete = "love",
            git_dirty = "rose",
            git_ignore = "muted",
            git_merge = "iris",
            git_rename = "pine",
            git_stage = "iris",
            git_text = "rose",
            git_untracked = "subtle",

            h1 = "iris",
            h2 = "foam",
            h3 = "rose",
            h4 = "gold",
            h5 = "pine",
            h6 = "foam",
        },

        highlight_groups = {
            -- Comment = { fg = "foam" },
            -- VertSplit = { fg = "muted", bg = "muted" },
        },

        before_highlight = function(group, highlight, palette)
            -- Disable all undercurls
            -- if highlight.undercurl then
            --     highlight.undercurl = false
            -- end
            --
            -- Change palette colour
            -- if highlight.fg == palette.pine then
            --     highlight.fg = palette.foam
            -- end
        end,
    },
    {
        'comfysage/evergarden',
        opts = {
            transparent_background = true,
            contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
            style = {
                types = { italic = true, bold = true },
                comment = { italic = true },
                keyword = { italic = true, bold = true },
                string = { italic = true, bold = true },
                method = { italic = true, bold = true },
            },
            overrides = {}, -- add custom overrides
        },
    },
    { "Mofiqul/dracula.nvim" },
    { 'NLKNguyen/papercolor-theme' },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 900,
        config = true,
        opts = {
            terminal_colors = true, -- add neovim terminal colors
            undercurl = true,
            underline = true,
            bold = false,
            italic = {
                strings = true,
                emphasis = true,
                comments = true,
                operators = false,
                folds = true,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = true,    -- invert background for search, diffs, statuslines and errors
            contrast = "soft", -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = true,
        }
    },
}
