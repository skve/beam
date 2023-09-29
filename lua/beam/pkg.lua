local plugins = {
  require("beam.manifest.telescope"),  -- Fuzzy finder
  require("beam.manifest.rose-pine"),  -- Color scheme
  require("beam.manifest.treesitter"), -- Syntax highlighting
  require("beam.manifest.copilot"),    -- GitHub Copilot
  require("beam.manifest.neotree")     -- File explorer
}

-- Setup the `lazy.nvim` package manager.
-- https://github.com/folke/lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Install the requested plugins
require("lazy").setup(plugins)

nvim/
├── init.lua
├── lua/
│   ├── plugins.lua
│   ├── settings.lua
│   ├── keymappings.lua
│   ├── colorscheme.lua
│   └── ...
├── plugin/
│   ├── packer_compiled.lua
│   ├── telescope.nvim
│   ├── nvim-tree.lua
│   ├── ...
│   └── (plugin files)
└── autoload/
    ├── packer_compiled.lua
    └── (autoload files)