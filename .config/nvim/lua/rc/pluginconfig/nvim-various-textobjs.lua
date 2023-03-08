require("various-textobjs").setup({ useDefaultKeymaps = true })
vim.keymap.set({ "o", "x" }, ")", function()
	require("various-textobjs").subword()
end, { noremap = true, silent = true })
vim.keymap.set({ "o", "x" }, "(", function()
	require("various-textobjs").subword()
	vim.api.nvim_feedkeys("o", "x", false)
	vim.api.nvim_feedkeys("h", "x", false)
	local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
	vim.api.nvim_feedkeys(esc, "x", false)
	require("various-textobjs").subword()
end, { noremap = true, silent = true })
vim.keymap.set({ "n" }, ")", function()
	require("various-textobjs").subword()
	local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
	vim.api.nvim_feedkeys(esc, "x", false)
	vim.cmd("normal! l")
end, { noremap = true, silent = true })
vim.keymap.set({ "n" }, "(", function()
	require("various-textobjs").subword()
	vim.api.nvim_feedkeys("o", "x", false)
	local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
	vim.api.nvim_feedkeys(esc, "x", false)
	vim.cmd("normal! h")
end, { noremap = true, silent = true })
