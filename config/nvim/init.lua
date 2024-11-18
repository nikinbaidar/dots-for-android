local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.opt.hlsearch       = false
vim.opt.number         = true
vim.opt.relativenumber = true
vim.opt.cursorline     = true
vim.opt.ignorecase     = true
vim.opt.autochdir      = true
vim.opt.expandtab      = true
vim.opt.breakindent    = true
vim.opt.linebreak      = true
vim.opt.scrolloff      = 5
vim.opt.shiftwidth     = 4
vim.opt.tabstop        = 4
vim.opt.softtabstop    = 4
vim.opt.textwidth      = 79
vim.opt.colorcolumn    = "80"
vim.opt.path           = "./*,**"
vim.opt.tags           = "./.tags"


map = vim.api.nvim_set_keymap
noremap = { noremap = true }

vim.g.mapleader = " " 
map('n', '<leader>d', ':ls<CR>:bd', noremap)
map('n', '<leader>s', ':ls<CR>:b' , noremap)
map('n', '<leader>h', ':bp<CR>'   , noremap)
map('n', '<leader>j', '<C-w>w'    , noremap)
map('n', '<leader>k', '<C-w>w'    , noremap) 
map('n', '<leader>l', ':bn<CR>'   , noremap)
map('!', '<C-d>'    , '<Del>'     , noremap)

map('n', '<leader> ', ':set spell!<CR>', noremap)



require("lazy").setup({
    {"folke/tokyonight.nvim", lazy=false},
    {'lukas-reineke/indent-blankline.nvim'}, 
    {'numToStr/Comment.nvim'}, 
    {'nvim-lualine/lualine.nvim'}, 
    {'windwp/nvim-autopairs'}, 
    {'junegunn/fzf.vim'}, 
    {'tpope/vim-surround'}, 
    {'tpope/vim-repeat'}, 
    {'nvim-treesitter/nvim-treesitter'}, 
    {'nvim-lualine/lualine.nvim'} 
})



vim.cmd [[ colorscheme habamax ]]


vim.g.netrw_banner = 0
vim.api.nvim_buf_set_option(0, 'bufhidden', 'delete')
vim.api.nvim_win_set_option(0, 'colorcolumn', '')
vim.g.netrw_dirhistmax = 0
vim.g.netrw_bufsettings = 'number nowrap noma nomod nobl ro'
vim.g.netrw_list_hide = [['\(^\|\s\s\)\zs\.\S\+,.*\.class$']]
