-- return {
--   "Exafunction/codeium.vim",
--   enabled = true,
--   version = "1.8.37",
--   config = function()
--     -- Change '<C-g>' here to any keycode you like.
--     vim.keymap.set("i", "<C-g>", function()
--       return vim.fn["codeium#Accept"]()
--     end, { expr = true })
--     vim.keymap.set("i", "<c-;>", function()
--       return vim.fn["codeium#CycleCompletions"](1)
--     end, { expr = true })
--     vim.keymap.set("i", "<c-,>", function()
--       return vim.fn["codeium#CycleCompletions"](-1)
--     end, { expr = true })
--     vim.keymap.set("i", "<c-x>", function()
--       return vim.fn["codeium#Clear"]()
--     end, { expr = true })
--   end,
-- }
return {
  "Exafunction/codeium.vim",
  enabled = true,
  version = "1.8.37",
  -- event = "InsertEnter",
  config = function()
    -- vim.keymap.set("i", "<C-g>", function()
    --   return vim.fn["codeium#Accept"]()
    -- end, { expr = true, silent = true })
    -- Change '<C-g>' here to any keycode you like.
    -- vim.keymap.set("i", "<C-g>", function()
    vim.keymap.set("i", "<Tab>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true })
    vim.keymap.set("i", "<c-;>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true })
    vim.keymap.set("i", "<c-,>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true })
    vim.keymap.set("i", "<c-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true })
  end,
}
