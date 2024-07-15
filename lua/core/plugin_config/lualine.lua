require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'dracula'
    },
     sections = {
          lualine_b = { 'branch' },
          lualine_c = { 'filename' },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' }
     }
}
