-- Definições de líder
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Mapeamento para remover highlight da busca
vim.api.nvim_set_keymap("n", "<leader>h", ":nohlsearch<CR>", { noremap = true, silent = true })

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Mapeamentos para copiar e colar
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Y", '"+yg_', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>P", '"+P', { noremap = true, silent = true })

-- Mapeamento para alternar NvimTree
vim.api.nvim_set_keymap("n", "<c-n>", ":NvimTreeFindFileToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Mapeamentos para alternar entre o código e o NvimTree usando Alt
vim.api.nvim_set_keymap("n", "<A-h>", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-l>", ":wincmd l<CR>", { noremap = true, silent = true })

-- Funções para aumentar e diminuir a largura do NvimTree
function ResizeNvimTree(amount)
	local view = require("nvim-tree.view")
	local width = view.View.width + amount
	view.View.width = math.max(1, width) -- Impedir largura negativa
	view.resize()
end

function IncreaseNvimTreeWidth()
	ResizeNvimTree(5) -- Aumentar largura em 5 colunas
end

function DecreaseNvimTreeWidth()
	ResizeNvimTree(-5) -- Diminuir largura em 5 colunas
end

-- Mapeamentos para ajustar a largura do NvimTree usando Alt
vim.api.nvim_set_keymap("n", "<A-Left>", ":lua DecreaseNvimTreeWidth()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-Right>", ":lua IncreaseNvimTreeWidth()<CR>", { noremap = true, silent = true })

-- Definir mapeamentos para alternar entre os buffers
vim.api.nvim_set_keymap("n", "[b", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]b", ":bnext<CR>", { noremap = true, silent = true })

-- Mapeamento personalizado para salvar o arquivo com <leader>w
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })

-- Mapeamento para Triggar o LazyGit
vim.api.nvim_set_keymap("n", "<leader>gg", "!lazygit", { noremap = true, silent = true })

-- Mapeamento para abrir o LazyGit
vim.api.nvim_set_keymap(
	"n",
	"<leader>gg",
	":FloatermNew --width=1.0 --height=1.0 lazygit<CR>",
	{ noremap = true, silent = true }
)

-- Função para abrir uma nova janela dividida verticalmente
function OpenInVerticalSplit()
	local lib = require("nvim-tree.lib")
	local node = lib.get_node_at_cursor()
	if node and node.absolute_path then
		-- Salva a janela atual (que deve ser o Neo-tree)
		local neotree_win = vim.api.nvim_get_current_win()

		-- Abre o arquivo em um vsplit
		vim.cmd("vsplit " .. node.absolute_path)

		-- Move a janela recém-aberta para a direita
		vim.cmd("wincmd L")

		-- Volta o foco para o Neo-tree
		vim.api.nvim_set_current_win(neotree_win)
	end
end

-- Autocmd para mapear 'v' apenas no NvimTree
vim.cmd([[
  augroup NvimTreeGroup
    autocmd!
    autocmd FileType NvimTree lua vim.api.nvim_buf_set_keymap(0, 'n', 'v', ':lua OpenInVerticalSplit()<CR>', { noremap = true, silent = true })
  augroup END
]])
