return
-- Auto Pairs
{
    { 'jiangmiao/auto-pairs' },
    {
        'gen740/SmoothCursor.nvim',
        config = function()
            require('smoothcursor').setup()
        end
    },
    {
        "Mr-LLLLL/cool-chunk.nvim",
        event = { "CursorHold", "CursorHoldI" },
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            local ft = require("cool-chunk.utils.filetype").support_filetypes
            require("cool-chunk").setup({
                {
                    chunk = {
                        notify = true,
                        support_filetypes = ft.support_filetypes, --
                        exclude_filetypes = ft.exclude_filetypes,
                        hl_group = {
                            chunk = "CursorLineNr",
                            error = "Error",
                        },
                        chars = {
                            horizontal_line = "─",
                            vertical_line = "│",
                            left_top = "╭",
                            left_bottom = "╰",
                            left_arrow = "<",
                            bottom_arrow = "v",
                            right_arrow = ">",
                        },
                        textobject = "ah",
                        animate_duration = 200, -- if don't want to animation, set to 0.
                        fire_event = { "CursorHold", "CursorHoldI" },
                    },
                    context = {
                        notify = true,
                        chars = {
                            "│",
                        },
                        hl_group = {
                            context = "LineNr",
                        },
                        exclude_filetypes = ft.exclude_filetypes,
                        support_filetypes = ft.support_filetypes,
                        textobject = "ih",
                        jump_support_filetypes = { "lua", "python" },
                        jump_start = "[{",
                        jump_end = "]}",
                        fire_event = { "CursorHold", "CursorHoldI" },
                    },
                    line_num = {
                        notify = true,
                        hl_group = {
                            chunk = "CursorLineNr",
                            context = "LineNr",
                            error = "Error",
                        },
                        support_filetypes = ft.support_filetypes,
                        exclude_filetypes = ft.exclude_filetypes,
                        fire_event = { "CursorHold", "CursorHoldI" },
                    }
                }
            })
        end
    },

    { 'nvim-tree/nvim-web-devicons' },
    {
        'stevearc/conform.nvim',
        opts = {},
    },



    -- Added these two plugins
    -- Indentation Highlighting
    {
        "lukas-reineke/indent-blankline.nvim",
    },

    { "EdenEast/nightfox.nvim", },

    { "kyazdani42/nvim-web-devicons", lazy = false },

    { "L3MON4D3/LuaSnip",             lazy = false, dependencies = { "rafamadriz/friendly-snippets" } },

    { 'simrat39/rust-tools.nvim' },

    { "github/copilot.vim" },

    {
        "kawre/leetcode.nvim",
        build = ":TSUpdate html",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim", -- required by telescope
            "MunifTanjim/nui.nvim",

            -- optional
            "nvim-treesitter/nvim-treesitter",
            "rcarriga/nvim-notify",
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            -- configuration goes here
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
    },

    { "anuvyklack/middleclass" },
    {
        "anuvyklack/animation.nvim"
    },

}
