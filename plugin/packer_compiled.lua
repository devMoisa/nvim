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
    config = { "\27LJ\2\n”\6\0\0\a\0\30\1@6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\6\0006\4\3\0009\4\4\0049\4\5\4)\6\0\0B\4\2\2\23\4\0\4=\4\a\3=\3\t\2B\0\2\0016\0\3\0009\0\4\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\3\0009\0\4\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\0016\0\3\0009\0\4\0009\0\n\0'\2\v\0'\3\18\0'\4\19\0005\5\20\0B\0\5\0016\0\3\0009\0\4\0009\0\n\0'\2\v\0'\3\21\0'\4\22\0005\5\23\0B\0\5\0016\0\3\0009\0\4\0009\0\n\0'\2\v\0'\3\24\0'\4\25\0005\5\26\0B\0\5\0016\0\3\0009\0\4\0009\0\n\0'\2\v\0'\3\27\0'\4\28\0005\5\29\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2/:lua require(\"harpoon.ui\").nav_file(4)<CR>\n<C-s>\1\0\2\fnoremap\2\vsilent\2/:lua require(\"harpoon.ui\").nav_file(3)<CR>\n<C-n>\1\0\2\fnoremap\2\vsilent\2/:lua require(\"harpoon.ui\").nav_file(2)<CR>\n<C-t>\1\0\2\fnoremap\2\vsilent\2/:lua require(\"harpoon.ui\").nav_file(1)<CR>\n<C-h>\1\0\2\fnoremap\2\vsilent\0027:lua require(\"harpoon.ui\").toggle_quick_menu()<CR>\n<C-e>\1\0\2\fnoremap\2\vsilent\0020:lua require(\"harpoon.mark\").add_file()<CR>\14<leader>a\6n\20nvim_set_keymap\tmenu\1\0\1\tmenu\0\nwidth\1\0\1\nwidth\0\23nvim_win_get_width\bapi\bvim\nsetup\fharpoon\frequire\b\0" },
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
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
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/dev/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
try_loadstring("\27LJ\2\n”\6\0\0\a\0\30\1@6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\6\0006\4\3\0009\4\4\0049\4\5\4)\6\0\0B\4\2\2\23\4\0\4=\4\a\3=\3\t\2B\0\2\0016\0\3\0009\0\4\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\3\0009\0\4\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\0016\0\3\0009\0\4\0009\0\n\0'\2\v\0'\3\18\0'\4\19\0005\5\20\0B\0\5\0016\0\3\0009\0\4\0009\0\n\0'\2\v\0'\3\21\0'\4\22\0005\5\23\0B\0\5\0016\0\3\0009\0\4\0009\0\n\0'\2\v\0'\3\24\0'\4\25\0005\5\26\0B\0\5\0016\0\3\0009\0\4\0009\0\n\0'\2\v\0'\3\27\0'\4\28\0005\5\29\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2/:lua require(\"harpoon.ui\").nav_file(4)<CR>\n<C-s>\1\0\2\fnoremap\2\vsilent\2/:lua require(\"harpoon.ui\").nav_file(3)<CR>\n<C-n>\1\0\2\fnoremap\2\vsilent\2/:lua require(\"harpoon.ui\").nav_file(2)<CR>\n<C-t>\1\0\2\fnoremap\2\vsilent\2/:lua require(\"harpoon.ui\").nav_file(1)<CR>\n<C-h>\1\0\2\fnoremap\2\vsilent\0027:lua require(\"harpoon.ui\").toggle_quick_menu()<CR>\n<C-e>\1\0\2\fnoremap\2\vsilent\0020:lua require(\"harpoon.mark\").add_file()<CR>\14<leader>a\6n\20nvim_set_keymap\tmenu\1\0\1\tmenu\0\nwidth\1\0\1\nwidth\0\23nvim_win_get_width\bapi\bvim\nsetup\fharpoon\frequire\b\0", "config", "harpoon")
time([[Config for harpoon]], false)

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
