-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
vim.cmd([[ command! RunTSFile :lua require'YOUR_LUA_MODULE_NAME'.run_ts_file() ]])


return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use (
	'nvim-treesitter/nvim-treesitter',
	{run = ':TSUpdate'}
	)

use({"https://github.com/folke/tokyonight.nvim",
as ='tokyonight',
config = function()
    vim.cmd('colorscheme tokyonight')
end
})
use { "derektata/lorem.nvim" }
use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} };
use('nvim-treesitter/playground')
use('theprimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use('github/copilot.vim')
use("nvim-treesitter/nvim-treesitter-context");
use("mfussenegger/nvim-dap");
use("mattn/emmet-vim");
use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v1.x',
	requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'saadparwaiz1/cmp_luasnip'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-nvim-lua'},

		-- Snippets
		{'L3MON4D3/LuaSnip'},
		{'rafamadriz/friendly-snippets'},
	}
}

use("folke/zen-mode.nvim")
use("eandrju/cellular-automaton.nvim")
use("laytan/cloak.nvim")
use({
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
})
use("sbdchd/neoformat")
use('dmmulroy/tsc.nvim')
end)

