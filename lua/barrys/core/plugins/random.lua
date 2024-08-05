
return
{
    -- Auto Pairs
    {'jiangmiao/auto-pairs'},



        -- Added these two plugins
    -- Indentation Highlighting
    {
        "lukas-reineke/indent-blankline.nvim",
    },

	{ "EdenEast/nightfox.nvim", },

    { "kyazdani42/nvim-web-devicons", lazy=false},

    { "L3MON4D3/LuaSnip", lazy=false, dependencies = { "rafamadriz/friendly-snippets" }},

    {'simrat39/rust-tools.nvim'},

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
}

}

