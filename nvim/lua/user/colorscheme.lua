-- local colorscheme = "tokyonight-night"
--
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   return
-- end

local colorscheme = "tokyonight"
vim.g.tokyonight_style = "night" -- available: night, storm
-- local colorscheme = "onedark"
vim.o.termguicolors = true
vim.g.tokyonight_enable_italic = 1

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
