require("which-key")

vim.api.nvim_set_keymap("n", "<Leader><CR>", "<Cmd>WhichKey <Leader><CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<LocalLeader><CR>", "<Cmd>WhichKey <LocalLeader><CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "[_SubLeader]<CR>", "<Cmd>WhichKey [_SubLeader]<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "[_Make]<CR>", "<Cmd>WhichKey [_Make]<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "[_Debugger]<CR>", "<Cmd>WhichKey [_Debugger]<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "[_FuzzyFinder]<CR>", "<Cmd>WhichKey [_FuzzyFinder]<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "[_Lsp]<CR>", "<Cmd>WhichKey [_Lsp]<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "[_Git]<CR>", "<Cmd>WhichKey [_Git]<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "[_Ts]<CR>", "<Cmd>WhichKey [_Ts]<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "g<CR>", "<Cmd>WhichKey g<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "[<CR>", "<Cmd>WhichKey [<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "]<CR>", "<Cmd>WhichKey ]<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "[_Mark]<CR>", "<Cmd>WhichKey [_Mark]<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "[_Terminal]<CR>", "<Cmd>WhichKey [_Terminal]<CR>", { noremap = true })
