local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	print(install_path)
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
   use 'L3MON4D3/LuaSnip'
	use 'wbthomason/packer.nvim'
   use 'matze/vim-move'
	use 'nvim-lualine/lualine.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'MunifTanjim/nui.nvim'
	use 'loctvl842/monokai-pro.nvim'
	use { "ellisonleao/gruvbox.nvim" }
	use 'nvim-tree/nvim-tree.lua'
   use "windwp/nvim-autopairs"
	use 'nvim-treesitter/nvim-treesitter'
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/nvim-cmp'
   use {"akinsho/toggleterm.nvim"}
   use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
   use "rafamadriz/friendly-snippets"
   use 'akinsho/bufferline.nvim'
   use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

	if packer_bootstrap then
		require('packer').sync()
	end
end)
