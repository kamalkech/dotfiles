return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/noice.nvim" },
  config = function()
    local lualine = require("lualine")
    -- local lazy_status = require("lazy.status") -- to configure lazy pending updates count
    -- local noice = require("noice")

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        icons_enabled = true,
        component_separators = "|",
        section_separators = "",
        --   theme = my_lualine_theme,
      },
      sections = {
        lualine_x = {
          {
            -- noice.api.statusline.mode.get,
            -- noice.api.statusline.mode.has,
            color = { fg = "#ff9e64" },
          },
          {
            -- require("noice").api.status.command.get,
            -- cond = require("noice").api.status.command.has,
            color = { fg = "#ff9e64" },
          },
        },
        lualine_a = {
          {
            "buffers",
          },
        },
      },
    })
  end,
}
