vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
  on_attach = function(bufnr)
    local api = require('nvim-tree.api')

    -- Default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- Custom mappings
    local opts = { buffer = bufnr, noremap = true, silent = true, nowait = true }
    vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts)
    vim.keymap.set('n', 'l', api.node.open.edit, opts)
  end,
})
