vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader= " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
local plugins = {
	{
  	"folke/tokyonight.nvim",lazy = false, priority = 1000, opts ={},
	},
	{"nvim-treesitter/nvim-treesitter", build= ":TSUpdate"},
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
     dependencies = { 'nvim-lua/plenary.nvim' }
  },
}

require("lazy").setup(plugins, opts)
require("tokyonight").setup()
vim.cmd("colorscheme tokyonight-storm")


local colors = require("tokyonight.colors").setup() -- pass in any of the config options as explained above
local util = require("tokyonight.util")

local builtin = require('telescope.builtin')
vim.keymap.set('n','<C-p>',builtin.find_files,{})
vim.keymap.set('n','<leader>fg',builtin.live_grep,{})

--Treesitter
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "javascript","python"},
  highlight = { enable = true },
  indent = { enable = true }
})

