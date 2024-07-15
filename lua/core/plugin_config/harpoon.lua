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
vim.api.nvim_set_keymap("n", "<C-h>", ':lua require("harpoon.ui").nav_file(1)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-t>", ':lua require("harpoon.ui").nav_file(2)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-n>", ':lua require("harpoon.ui").nav_file(3)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-s>", ':lua require("harpoon.ui").nav_file(4)<CR>', { noremap = true, silent = true })
