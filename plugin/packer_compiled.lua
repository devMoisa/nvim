-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/dev/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?.lua;/Users/dev/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?/init.lua;/Users/dev/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?.lua;/Users/dev/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/dev/.cache/nvim/packer_hererocks/2.1.1720049189/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\np\0\2\v\0\5\1\20\21\2\0\0!\2\2\0016\3\0\0009\3\1\3\25\5\0\2B\3\2\2!\4\3\0026\5\2\0009\5\3\5'\a\4\0\18\b\3\0B\5\3\2\18\6\0\0006\a\2\0009\a\3\a'\t\4\0\18\n\4\0B\a\3\2&\5\a\5L\5\2\0\6 \brep\vstring\nfloor\tmath\4�\19\1\0\14\0002\2r6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\2'\4\5\0B\2\2\0019\2\6\0019\2\a\0025\3\t\0=\3\b\0029\2\6\0019\2\n\0024\3\b\0009\4\v\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\1\0039\4\v\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\2\0039\4\v\1'\6\18\0'\a\19\0'\b\20\0B\4\4\2>\4\3\0039\4\v\1'\6\21\0'\a\22\0'\b\23\0B\4\4\2>\4\4\0039\4\v\1'\6\24\0'\a\25\0'\b\26\0B\4\4\2>\4\5\0039\4\v\1'\6\27\0'\a\28\0'\b\29\0B\4\4\2>\4\6\0039\4\v\1'\6\30\0'\a\31\0'\b \0B\4\4\0?\4\0\0=\3\b\0023\2!\0009\3\6\0019\3\"\0035\4$\0\18\5\2\0'\a#\0)\b2\0B\5\3\2>\5\1\4\18\5\2\0006\a%\0009\a&\a'\t'\0B\a\2\2)\b2\0B\5\3\2>\5\3\4\18\5\2\0006\a%\0009\a&\a'\t(\0B\a\2\2)\b2\0B\5\3\2>\5\4\4\18\5\2\0'\a)\0006\b\3\0009\b*\bB\b\1\0029\b+\b'\t,\0006\n\3\0009\n*\nB\n\1\0029\n-\n'\v,\0006\f\3\0009\f*\fB\f\1\0029\f.\f&\a\f\a)\b2\0B\5\3\0?\5\1\0=\4\b\0039\3/\0009\0050\1B\3\2\0016\3\3\0009\3\4\3'\0051\0B\3\2\1K\0\1\0001autocmd FileType alpha setlocal nofoldenable\topts\nsetup\npatch\nminor\6.\nmajor\fversion\n v\n%H:%M\r%a %d %b\tdate\aos\1\3\0\0\0\6 \30Kaizoku Ou Ni Ore Wa Naru\vfooter\0\f:qa<CR>\16󰗼   Quit\6q\29:Telescope live_grep<CR>\19󱘞   Ripgrep\6R.:e ~/.config/nvim/lua/user/config.lua<CR>\24   Configuration\6c\28:Telescope oldfiles<CR>\17   Recent\6r\28:cd $HOME | Neotree<CR>\24   File Explorer\6e):cd $HOME | Telescope find_files<CR>\21󰮗   Find file\6f :ene <BAR> startinsert <CR>\19   New file\6n\vbutton\fbuttons\1\r\0\0\5\5�\1▓█████▄ ▓█████  ██▒   █▓    ███▄ ▄███▓ ▒█████   ██▓  ██████  ▄▄▄      �\1▒██▀ ██▌▓█   ▀ ▓██░   █▒   ▓██▒▀█▀ ██▒▒██▒  ██▒▓██▒▒██    ▒ ▒████▄    �\1░██   █▌▒███    ▓██  █▒░   ▓██    ▓██░▒██░  ██▒▒██▒░ ▓██▄   ▒██  ▀█▄  �\1░▓█▄   ▌▒▓█  ▄   ▒██ █░░   ▒██    ▒██ ▒██   ██░░██░  ▒   ██▒░██▄▄▄▄██ �\1░▒████▓ ░▒████▒   ▒▀█░     ▒██▒   ░██▒░ ████▓▒░░██░▒██████▒▒ ▓█   ▓██▒�\1 ▒▒▓  ▒ ░░ ▒░ ░   ░ ▐░     ░ ▒░   ░  ░░ ▒░▒░▒░ ░▓  ▒ ▒▓▒ ▒ ░ ▒▒   ▓▒█░�\1 ░ ▒  ▒  ░ ░  ░   ░ ░░     ░  ░      ░  ░ ▒ ▒░  ▒ ░░ ░▒  ░ ░  ▒   ▒▒ ░q ░ ░  ░    ░        ░░     ░      ░   ░ ░ ░ ▒   ▒ ░░  ░  ░    ░   ▒   a   ░       ░  ░      ░            ░       ░ ░   ░        ░        ░  ░O ░                  ░                                                 \bval\vheader\fsection,      hi AlphaHeader guifg=#800080\n    \bcmd\bvim\27alpha.themes.dashboard\nalpha\frequire\15����\4\v����\4\0" },
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/git-blame.nvim",
    url = "https://github.com/f-person/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\5\0\17\00026\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\a\0005\4\b\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\t\0005\4\n\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\v\0005\4\f\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\r\0005\4\14\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\15\0005\4\16\0B\0\4\1K\0\1\0\1\0\1\afg\f#56B6C2\16RainbowCyan\1\0\1\afg\f#C678DD\18RainbowViolet\1\0\1\afg\f#98C379\17RainbowGreen\1\0\1\afg\f#D19A66\18RainbowOrange\1\0\1\afg\f#61AFEF\16RainbowBlue\1\0\1\afg\f#E5C07B\18RainbowYellow\1\0\1\afg\f#E06C75\15RainbowRed\16nvim_set_hl\bapi\bvim�\2\1\0\6\0\r\0\0195\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0019\4\4\0019\4\5\0043\5\6\0B\2\3\0016\2\1\0'\4\a\0B\2\2\0029\2\b\0025\4\v\0005\5\t\0=\0\n\5=\5\f\4B\2\2\1K\0\1\0\vindent\1\0\1\vindent\0\14highlight\1\0\1\14highlight\0\nsetup\bibl\0\20HIGHLIGHT_SETUP\ttype\rregister\14ibl.hooks\frequire\1\b\0\0\15RainbowRed\18RainbowYellow\16RainbowBlue\18RainbowOrange\17RainbowGreen\18RainbowViolet\16RainbowCyan\0" },
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["jest.nvim"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/jest.nvim",
    url = "https://github.com/mattkubej/jest.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-null-ls.nvim"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/mason-null-ls.nvim",
    url = "https://github.com/jay-babu/mason-null-ls.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-be-good"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\5\0\17\00026\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\a\0005\4\b\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\t\0005\4\n\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\v\0005\4\f\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\r\0005\4\14\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\15\0005\4\16\0B\0\4\1K\0\1\0\1\0\1\afg\f#56B6C2\16RainbowCyan\1\0\1\afg\f#C678DD\18RainbowViolet\1\0\1\afg\f#98C379\17RainbowGreen\1\0\1\afg\f#D19A66\18RainbowOrange\1\0\1\afg\f#61AFEF\16RainbowBlue\1\0\1\afg\f#E5C07B\18RainbowYellow\1\0\1\afg\f#E06C75\15RainbowRed\16nvim_set_hl\bapi\bvim�\2\1\0\6\0\r\0\0195\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0019\4\4\0019\4\5\0043\5\6\0B\2\3\0016\2\1\0'\4\a\0B\2\2\0029\2\b\0025\4\v\0005\5\t\0=\0\n\5=\5\f\4B\2\2\1K\0\1\0\vindent\1\0\1\vindent\0\14highlight\1\0\1\14highlight\0\nsetup\bibl\0\20HIGHLIGHT_SETUP\ttype\rregister\14ibl.hooks\frequire\1\b\0\0\15RainbowRed\18RainbowYellow\16RainbowBlue\18RainbowOrange\17RainbowGreen\18RainbowViolet\16RainbowCyan\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\np\0\2\v\0\5\1\20\21\2\0\0!\2\2\0016\3\0\0009\3\1\3\25\5\0\2B\3\2\2!\4\3\0026\5\2\0009\5\3\5'\a\4\0\18\b\3\0B\5\3\2\18\6\0\0006\a\2\0009\a\3\a'\t\4\0\18\n\4\0B\a\3\2&\5\a\5L\5\2\0\6 \brep\vstring\nfloor\tmath\4�\19\1\0\14\0002\2r6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\2'\4\5\0B\2\2\0019\2\6\0019\2\a\0025\3\t\0=\3\b\0029\2\6\0019\2\n\0024\3\b\0009\4\v\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\1\0039\4\v\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\2\0039\4\v\1'\6\18\0'\a\19\0'\b\20\0B\4\4\2>\4\3\0039\4\v\1'\6\21\0'\a\22\0'\b\23\0B\4\4\2>\4\4\0039\4\v\1'\6\24\0'\a\25\0'\b\26\0B\4\4\2>\4\5\0039\4\v\1'\6\27\0'\a\28\0'\b\29\0B\4\4\2>\4\6\0039\4\v\1'\6\30\0'\a\31\0'\b \0B\4\4\0?\4\0\0=\3\b\0023\2!\0009\3\6\0019\3\"\0035\4$\0\18\5\2\0'\a#\0)\b2\0B\5\3\2>\5\1\4\18\5\2\0006\a%\0009\a&\a'\t'\0B\a\2\2)\b2\0B\5\3\2>\5\3\4\18\5\2\0006\a%\0009\a&\a'\t(\0B\a\2\2)\b2\0B\5\3\2>\5\4\4\18\5\2\0'\a)\0006\b\3\0009\b*\bB\b\1\0029\b+\b'\t,\0006\n\3\0009\n*\nB\n\1\0029\n-\n'\v,\0006\f\3\0009\f*\fB\f\1\0029\f.\f&\a\f\a)\b2\0B\5\3\0?\5\1\0=\4\b\0039\3/\0009\0050\1B\3\2\0016\3\3\0009\3\4\3'\0051\0B\3\2\1K\0\1\0001autocmd FileType alpha setlocal nofoldenable\topts\nsetup\npatch\nminor\6.\nmajor\fversion\n v\n%H:%M\r%a %d %b\tdate\aos\1\3\0\0\0\6 \30Kaizoku Ou Ni Ore Wa Naru\vfooter\0\f:qa<CR>\16󰗼   Quit\6q\29:Telescope live_grep<CR>\19󱘞   Ripgrep\6R.:e ~/.config/nvim/lua/user/config.lua<CR>\24   Configuration\6c\28:Telescope oldfiles<CR>\17   Recent\6r\28:cd $HOME | Neotree<CR>\24   File Explorer\6e):cd $HOME | Telescope find_files<CR>\21󰮗   Find file\6f :ene <BAR> startinsert <CR>\19   New file\6n\vbutton\fbuttons\1\r\0\0\5\5�\1▓█████▄ ▓█████  ██▒   █▓    ███▄ ▄███▓ ▒█████   ██▓  ██████  ▄▄▄      �\1▒██▀ ██▌▓█   ▀ ▓██░   █▒   ▓██▒▀█▀ ██▒▒██▒  ██▒▓██▒▒██    ▒ ▒████▄    �\1░██   █▌▒███    ▓██  █▒░   ▓██    ▓██░▒██░  ██▒▒██▒░ ▓██▄   ▒██  ▀█▄  �\1░▓█▄   ▌▒▓█  ▄   ▒██ █░░   ▒██    ▒██ ▒██   ██░░██░  ▒   ██▒░██▄▄▄▄██ �\1░▒████▓ ░▒████▒   ▒▀█░     ▒██▒   ░██▒░ ████▓▒░░██░▒██████▒▒ ▓█   ▓██▒�\1 ▒▒▓  ▒ ░░ ▒░ ░   ░ ▐░     ░ ▒░   ░  ░░ ▒░▒░▒░ ░▓  ▒ ▒▓▒ ▒ ░ ▒▒   ▓▒█░�\1 ░ ▒  ▒  ░ ░  ░   ░ ░░     ░  ░      ░  ░ ▒ ▒░  ▒ ░░ ░▒  ░ ░  ▒   ▒▒ ░q ░ ░  ░    ░        ░░     ░      ░   ░ ░ ░ ▒   ▒ ░░  ░  ░    ░   ▒   a   ░       ░  ░      ░            ░       ░ ░   ░        ░        ░  ░O ░                  ░                                                 \bval\vheader\fsection,      hi AlphaHeader guifg=#800080\n    \bcmd\bvim\27alpha.themes.dashboard\nalpha\frequire\15����\4\v����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
