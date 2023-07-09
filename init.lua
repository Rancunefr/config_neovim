-- Gestionnaire de plugins

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'akinsho/bufferline.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
vim.call('plug#end')

-- Configuration de la status line

vim.o.cmdheight = 1
vim.o.laststatus = 2

-- Gestion des buffers

vim.o.hidden = true

-- Colors

vim.o.background='dark'
vim.cmd [[colorscheme rancune]]

-- Cursorline

vim.o.cursorline = true
vim.api.nvim_create_autocmd( {"InsertEnter", "InsertLeave"},
	{ command = "set cursorline!",} ) ;

-- Interface

vim.o.showcmd = true
vim.o.backspace = "indent,eol,start"
vim.o.history = 1000
vim.o.wildmenu = true
vim.o.wildmode = "longest:full,full"
vim.o.mouse = "a"

vim.o.scrolloff = 3
vim.o.sidescrolloff = 5

vim.o.autoread = true

vim.o.number = true
vim.o.relativenumber = true

-- Reglages activés par défaut

vim.o.noshowmode = true 
vim.o.ruler = true 
vim.o.title = true 

vim.o.directory = vim.fn.expand('$HOME/.config/nvim/tmp/swap_files/')
vim.o.backupdir = vim.fn.expand('$HOME/.config/nvim/tmp/backup_files/')
vim.o.undodir   = vim.fn.expand('$HOME/.config/nvim/tmp/undodir')

vim.o.writebackup = false
vim.o.undofile = true
vim.o.exrc = true

-- Rendu des caractères

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.wrap = false
vim.o.linebreak = true

-- Shortcuts

vim.keymap.set('n', '<F1>', ':set relativenumber!<CR>')

-- Fichiers de config à inclure

require( 'cfg_lualine' )

require("bufferline").setup{}
