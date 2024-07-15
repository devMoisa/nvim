-- Configuração do Telescope
require('telescope').setup({
  defaults = {
    file_ignore_patterns = { "node_modules/.*" }
  }
})

local builtin = require('telescope.builtin')

-- Atalhos existentes
vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})

-- Novos atalhos com <leader>
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})

