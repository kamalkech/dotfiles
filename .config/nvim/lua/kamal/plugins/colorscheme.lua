-- return {
--   "folke/tokyonight.nvim",
--   priority = 1000,
--   config = function()
--     local transparent = false -- set to true if you would like to enable transparency
--
--     local bg = "#011628"
--     local bg_dark = "#011423"
--     local bg_highlight = "#143652"
--     local bg_search = "#0A64AC"
--     local bg_visual = "#275378"
--     local fg = "#CBE0F0"
--     local fg_dark = "#B4D0E9"
--     local fg_gutter = "#627E97"
--     local border = "#547998"
--
--     require("tokyonight").setup({
--       style = "night",
--       transparent = transparent,
--       styles = {
--         sidebars = transparent and "transparent" or "dark",
--         floats = transparent and "transparent" or "dark",
--       },
--       on_colors = function(colors)
--         colors.bg = bg
--         colors.bg_dark = transparent and colors.none or bg_dark
--         colors.bg_float = transparent and colors.none or bg_dark
--         colors.bg_highlight = bg_highlight
--         colors.bg_popup = bg_dark
--         colors.bg_search = bg_search
--         colors.bg_sidebar = transparent and colors.none or bg_dark
--         colors.bg_statusline = transparent and colors.none or bg_dark
--         colors.bg_visual = bg_visual
--         colors.border = border
--         colors.fg = fg
--         colors.fg_dark = fg_dark
--         colors.fg_float = fg
--         colors.fg_gutter = fg_gutter
--         colors.fg_sidebar = fg_dark
--       end,
--     })
--
--     vim.cmd("colorscheme tokyonight")
--   end,
-- }

-- return {
--   "catppuccin/nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     local catppuccin = require("catppuccin")
--
--     catppuccin.setup({
--       flavour = "mocha",
--       transparent_background = false,
--     })
--
--     vim.cmd("colorscheme catppuccin")
--   end,
-- }

-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = function()
--     return {
--       style = "moon",
--       transparent = true,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--     }
--   end,
--   config = function()
--     require("tokyonight").setup({
--       style = "night",
--       transparent = true,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--       on_colors = function(colors)
--         colors.bg_search = "#0A64AC"
--         colors.bg_visual = "#275378"
--         colors.border = "#547998"
--       end,
--       on_highlights = function(hl, colors)
--         hl.LineNr = { fg = colors.fg_gutter }
--         hl.LineNrAbove = { fg = colors.fg_gutter }
--         hl.LineNrBelow = { fg = colors.fg_gutter }
--       end,
--     })
--     -- local tokyonight = require("tokyonight.colors")
--     vim.cmd("colorscheme tokyonight-night")
--   end,
-- }

return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("kanagawa").setup({
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = { -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
      theme = "wave", -- "lotus", -- Load "wave" theme when 'background' option is not set
      background = { -- map the value of 'background' option to a theme
        dark = "wave", -- "lotus", -- try "dragon" !
        light = "wave",
      },
    })
    vim.cmd.colorscheme("kanagawa")
  end,
}

-- return {
--   "ellisonleao/gruvbox.nvim",
--   priority = 1000,
--   config = function()
--     local gruvbox = require("gruvbox")
--     gruvbox.setup({})
--
--     vim.o.background = "light"
--     vim.cmd("colorscheme gruvbox")
--   end,
-- }

-- return {
--   "ayu-theme/ayu-vim",
--   config = function()
--     vim.opt.termguicolors = true -- enable true colors support
--     vim.g.ayucolor = "mirage" -- set the theme variant (light, dark, or mirage)
--     vim.cmd.colorscheme("ayu")
--   end,
-- }

-- return {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   priority = 1000,
--   config = function()
--     vim.cmd("colorscheme rose-pine-dawn")
--   end,
-- }
