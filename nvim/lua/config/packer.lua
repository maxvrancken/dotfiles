-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- UI (colors, syntax highlighting, etc...)

    -- Colors
    use 'folke/tokyonight.nvim'
    vim.cmd [[colorscheme tokyonight]]

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use 'Bekaboo/deadcolumn.nvim'

    -- Smooth scrolling and nav
    use({
        'gen740/SmoothCursor.nvim',
        config = function()
            require('smoothcursor').setup()
        end
    })
    use({
        'karb94/neoscroll.nvim',
        config = function()
            require('neoscroll').setup()
        end
    })

    -- Bars and lines
    use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        after = "nvim-web-devicons",       -- keep this if you're using NvChad
        config = function()
            require("barbecue").setup()
        end,
    })

    -- Navigational Tools

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use('ggandor/leap.nvim')
    use('theprimeagen/harpoon')
    use('ms-jpq/chadtree', { branch = 'chad', run = 'python3 -m chadtree deps' })

    -- Startup Dashboard

    use {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup({
                theme = 'hyper',
                config = {
                    week_header = {
                        enable = true,
                    },
                    shortcut = {
                        {
                            icon = ' ',
                            icon_hl = '@variable',
                            desc = 'Files',
                            group = 'Label',
                            action = 'Telescope find_files',
                            key = 'f',
                        },
                        -- {
                        --     desc = ' Apps',
                        --     group = 'DiagnosticHint',
                        --     action = 'Telescope app',
                        --     key = 'a',
                        -- },
                        -- {
                        --     desc = '󱘢 Content',
                        --     group = 'Number',
                        --     action = 'Telescope grep_string',
                        --     key = 'd',
                        -- },
                    },
                },
            })
        end,
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    -- Language Support

    use {
        'VonHeikemen/lsp-zero.nvim', -- LSP
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }


    -- Coding Utilities

    use('mbbill/undotree')                                                                       -- Undotree
    use { "akinsho/toggleterm.nvim", tag = '*' }                                                 -- Toggleable terminal
    use "klen/nvim-test"                                                                         -- Testing
    use "terrortylor/nvim-comment"
    use { "RutaTang/quicknote.nvim", requires = { "nvim-lua/plenary.nvim" }, config = function() -- Note taking per file/line
        require('quicknote')
            .setup {}
    end }


    -- Version Control

    use('tpope/vim-fugitive') -- Git Fugitive
    use 'f-person/git-blame.nvim'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
