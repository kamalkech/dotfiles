vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Others.
-- keymap.set("n", "<leader>c", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>c", "<CMD>bdelete!<CR>", { desc = "Close buffer", silent = true })
keymap.set("n", "<TAB>", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<S-TAB>", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab

-- vim.keymap.set('n', "<S-H>", "<CMD>:tabprev<CR>", { silent = true })
-- vim.keymap.set('n', "<S-L>", "<CMD>:tabnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>n", "<cmd>bnext<CR>", { desc = "[N]ext buffer" })
vim.keymap.set("n", "<leader>p", "<cmd>bprevious<CR>", { desc = "[P]revious buffer" })

-- save file
vim.keymap.set("n", "<C-s>", "<CMD>:w<CR>")
vim.keymap.set("v", "<C-s>", "<CMD>:w<CR>")

-- line code --

-- Move left/right block of code.
vim.keymap.set("v", "<S-Tab>", "<gv .", { silent = true })
vim.keymap.set("v", "<Tab>", ">gv .", { silent = true })

-- Move line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move UP line", silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move DOWN line", silent = true })

-- Duplicate line
vim.keymap.set("n", "<C-y>", "<CMD>:t .<CR>", { desc = "Duplicate line on mode normal", silent = true })
vim.api.nvim_set_keymap("v", "<C-y>", "YP", { desc = "Duplicate line mode view", noremap = true, silent = true })

-- Select all content file
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all content", silent = true })

vim.keymap.set("i", "<C-.>", "<CMD>lua vim.lsp.buf.code_action()<CR>", { desc = "Code Action", silent = true })
vim.keymap.set("n", "<leader>.", "<CMD>lua vim.lsp.buf.code_action()<CR>", { desc = "Code Action", silent = true })
