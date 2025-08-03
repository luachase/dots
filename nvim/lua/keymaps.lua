---- ### Map the Default Leader Key to 'Space' ### -----

vim.g.mapleader = " "
vim.g.maplocalleader = " "

----- ### Save File ### -----

vim.keymap.set("n", "<leader>w", function()
	vim.cmd("wa")
end, { desc = "Save Files" })

----- ### Quit ### -----

vim.keymap.set("n", "<leader>q", function()
	vim.cmd("q")
end, { desc = "Quit" })

vim.keymap.set("n", "<leader>Q", function()
	vim.cmd("q!")
end, { desc = "Force Quit" })

----- ### Split Windows ### -----
vim.keymap.set("n", "<leader>vs", function()
	vim.cmd("vsp")
end, { desc = "Split Vertically" })

vim.keymap.set("n", "<leader>hs", function()
	vim.cmd("horizontal split")
end, { desc = "Split Vertically" })

----- ### Undo&Redo ### ------
--- Undo
vim.keymap.set({ "n", "v", "s" }, "<leader>z", function()
	vim.cmd("u")
end, { desc = "Undo" })

--- Redo
vim.keymap.set({ "n", "v", "s" }, "<leader>x", "<C-r>", { desc = "Redo" })

------ ### Yank ### ------
vim.keymap.set({ "n", "v", "s" }, "<leader>c", function()
	vim.cmd("y")
end, { desc = "Copy" })

vim.keymap.set({ "n", "v", "s" }, "<leader>v", function()
	vim.cmd("p")
end, { desc = "Paste" })

--- ### Window Motions ### -----
-- vim.keymap.set("n", "<>", "<C-w>l", { desc = "Focus on the Right Window" })
--
-- vim.keymap.set("n", "<C-l>", "<C-w>r", { desc = "Focus on the Left Window" })
