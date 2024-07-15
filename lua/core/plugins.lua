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
		"ThePrimeagen/harpoon",
		config = function()
			require("harpoon").setup({
				menu = {
					width = vim.api.nvim_win_get_width(0) - 4,
				},
			})

			-- Mapeamentos de teclas
			vim.api.nvim_set_keymap(
				"n",
				"<leader>a",
				':lua require("harpoon.mark").add_file()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<C-e>",
				':lua require("harpoon.ui").toggle_quick_menu()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<C-h>",
				':lua require("harpoon.ui").nav_file(1)<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<C-t>",
				':lua require("harpoon.ui").nav_file(2)<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<C-n>",
				':lua require("harpoon.ui").nav_file(3)<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<C-s>",
				':lua require("harpoon.ui").nav_file(4)<CR>',
				{ noremap = true, silent = true }
			)
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
