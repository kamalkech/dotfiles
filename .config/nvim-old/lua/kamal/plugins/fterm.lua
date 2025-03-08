return {
  "numToStr/FTerm.nvim",
  config = function()
    vim.keymap.set("n", "<leader>ft", "<cmd>lua require('FTerm').toggle()<cr>", { desc = "Toggle FTerm" })
    vim.keymap.set("t", "<leader>ft", "<cmd>lua require('FTerm').toggle()<cr>", { desc = "Toggle FTerm" })

    vim.keymap.set("n", "<leader>=", "<cmd>lua require('FTerm').toggle()<cr>", { desc = "Toggle FTerm" })
    vim.keymap.set("t", "<leader>=", "<cmd>lua require('FTerm').toggle()<cr>", { desc = "Toggle FTerm" })
  end,
}
