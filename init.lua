--bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")
if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font:h13"
  -- text below applies for VimScript
  vim.g.neovide_theme = "auto"

  vim.g.neovide_cursor_vfx_mode = "railgun"
  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 5
end
