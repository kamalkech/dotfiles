-- return {
--   "Exafunction/codeium.vim",
--   enabled = true,
--   version = "1.8.37",
--   event = "InsertEnter",
--   config = function()
--     vim.keymap.set("i", "<Tab>", function()
--       return vim.fn["codeium#Accept"]()
--     end, { expr = true, silent = true })
--   end,
-- }

return {
  "Exafunction/codeium.vim",
  enabled = true,
  event = "BufEnter",
  config = function()
    vim.keymap.set("i", "<C-g>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-;>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-,>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true, silent = true })
  end,
}
