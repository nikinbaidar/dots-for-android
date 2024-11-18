
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'numToStr/Comment.nvim'
    use 'windwp/nvim-autopairs'
    use 'junegunn/fzf.vim'
    use 'tpope/vim-surround'
    use { 'tpope/vim-dadbod', 'kristijanhusak/vim-dadbod-ui' }
    use 'tpope/vim-repeat'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'JoosepAlviste/nvim-ts-context-commentstring' 
    use { "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" }
    use { 'hrsh7th/nvim-cmp', requires = {'saadparwaiz1/cmp_luasnip'} }
    use { 'nvim-lualine/lualine.nvim' }
end)
