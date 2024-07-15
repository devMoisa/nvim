require'nvim-treesitter.configs'.setup {
  -- Uma lista de nomes de parsers, ou "all"
  ensure_installed = { 
    "lua", "ruby", "vim", "html",
    "javascript", "typescript", "tsx", "css", "go", "json"
  },

  sync_install = false,
  
  auto_install = true,
  
  highlight = {
    enable = true,
  },
  
  indent = {
    enable = true,
  },
}

