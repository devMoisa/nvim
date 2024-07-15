local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")
	use("nvim-lualine/lualine.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("windwp/nvim-ts-autotag")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("lewis6991/gitsigns.nvim")
	use("christoomey/vim-tmux-navigator")
	use("mattkubej/jest.nvim")
	use("ThePrimeagen/vim-be-good")
	use("f-person/git-blame.nvim")
	use("romgrk/barbar.nvim")
	use("numToStr/Comment.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	use("ThePrimeagen/harpoon")
	use({
		"voldikss/vim-floaterm",
		config = function()
			-- Configuração do Floaterm
			vim.g.floaterm_keymap_toggle = "<leader>gg"
			vim.g.floaterm_width = 8
			vim.g.floaterm_height = 8
		end,
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"kylechui/nvim-surround",
		tag = "*",
	})

	-- Plugins para integração e formatação de código
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use({
		"jay-babu/mason-null-ls.nvim",
		requires = { "williamboman/mason.nvim", "jose-elias-alvarez/null-ls.nvim" },
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)
