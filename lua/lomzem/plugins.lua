return {
    -- Color Schemes
    {"nvim-treesitter/nvim-treesitter"},
    {"rose-pine/neovim", name="rose-pine"},

    -- Must-haves
    {"nvim-telescope/telescope.nvim", tag="0.1.2", dependencies="nvim-lua/plenary.nvim"},
    -- {"nvim-telescope/telescope-fzf-native.nvim", build="make"},
    {"windwp/nvim-autopairs", event="InsertEnter", opts={}},
    {"numToStr/Comment.nvim", lazy=false, opts={
        toggler = {line = "<C-_>"},
        opleader = {line = "<C-_>"},
        mappings = {extra = false},
    }},
    {"kylechui/nvim-surround", version="*", event="VeryLazy", config=function()
        require("nvim-surround").setup({})
    end
    },

    -- Lsp
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    -- {"VonHeikemen/lsp-zero.nvim", branch="v2.x"},
    {"neovim/nvim-lspconfig"},

    -- Autocomplete
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"},
    {"hrsh7th/cmp-cmdline"},
    {"saadparwaiz1/cmp_luasnip"},
    {"L3MON4D3/LuaSnip", dependencies={
        {"rafamadriz/friendly-snippets"},
    }},
}
