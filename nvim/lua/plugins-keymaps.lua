----- ### Telescope ### -----

--- List Builtins ---
vim.keymap.set("n", "<Leader>lb", function()
	require("telescope.builtin").builtin()
end, { noremap = true, silent = true, desc = "List all Telescope Builtins" })

--- List Function Names and Variables from Treesitter ---
vim.keymap.set("n", "<Leader>lt", function()
	require("telescope.builtin").treesitter()
end, { noremap = true, silent = true, desc = "List Function names and Variables from Treesitter" })

--- List Files in the Current Directory ---
vim.keymap.set("n", "<Leader>lf", function()
	require("telescope.builtin").find_files()
end, { noremap = true, silent = true, desc = "List All Files in the Current Directory" })

--- List Previously-Opened Files ---
vim.keymap.set("n", "<Leader>lof", function()
	require("telescope.builtin").oldfiles()
end, { noremap = true, silent = true, desc = "List All Previously-Opened Files" })

--- Live Word Grabbing Accross Lua Files ---
vim.keymap.set("n", "<Leader>gr", function()
	require("telescope.builtin").live_grep()
end, { noremap = true, silent = true, desc = "Grep Words Across Lua Files" })

--- Search Word History ---
vim.keymap.set("n", "<Leader>th", function()
	require("telescope.builtin").search_history()
end, { noremap = true, silent = true, desc = "Search Word History" })

--- Search Command History ---
vim.keymap.set("n", "<Leader>ch", function()
	require("telescope.builtin").command_history()
end, { noremap = true, silent = true, desc = "Command History" })

--- Search Files in the Current Buffer with FZF ---
vim.keymap.set("n", "<Leader>sf", function()
	require("telescope.builtin").current_buffer_fuzzy_find()
end, { noremap = true, silent = true, desc = "Search Files in the Current Buffer with FZF" })

--- Git Commits ----
vim.keymap.set("n", "<Leader>gc", function()
	require("telescope.builtin").git_commits()
end, { noremap = true, silent = true, desc = "Open Git Commits of the Current Repo" })

--- Git Branches ---
vim.keymap.set("n", "<Leader>gb", function()
	require("telescope.builtin").git_branches()
end, { noremap = true, silent = true, desc = "Open Git Branches of the Current Repo" })

--- Git Status ---
vim.keymap.set("n", "<Leader>gs", function()
	require("telescope.builtin").git_status()
end, { noremap = true, silent = true, desc = "Open Git Status of the Current Repo" })

----- ### NEOGIT ### -----
vim.keymap.set("n", "<Leader>ng", function()
	require("neogit").open()
end, { noremap = true, silent = true, desc = "Open neogit" })

----- ### CONFORM(FORMATTER) ### -----
vim.keymap.set("n", "<Leader>ff", function()
	require("conform").format()
end, { noremap = true, silent = true, desc = "Format" })

----- ### TRANSPARENT NVIM ### -----

--- Enable / Disable Transparency
vim.keymap.set("n", "<Leader>tt", function()
	vim.cmd("TransparentToggle")
end, { noremap = true, silent = true, desc = "Toggle Transparency" })

----- ### LAZY ### -----
vim.keymap.set("n", "<Leader>lv", function()
	vim.cmd("Lazy")
end, { noremap = true, silent = true, desc = "Open LazyVim" })

----- #### WHICH-KEY ### -----
vim.keymap.set("n", "<Leader>km", function()
	require("which-key").show({ global = false })
end, { desc = "Buffer Local Keymaps (which-key)" })

----- ### YAZI ### -----
vim.keymap.set("n", "§", function()
	vim.cmd("Yazi")
end, { desc = "Open the file manager in nvim's working directory" })

---- ### BUFFERLINE ### -----
vim.keymap.set("n", "1", function()
	vim.cmd("BufferLineGoToBuffer 1")
end, { desc = "Tab 1" })

vim.keymap.set("n", "2", function()
	vim.cmd("BufferLineGoToBuffer 2")
end, { desc = "Tab 2" })

vim.keymap.set("n", "3", function()
	vim.cmd("BufferLineGoToBuffer 3")
end, { desc = "Tab 3" })

vim.keymap.set("n", "4", function()
	vim.cmd("BufferLineGoToBuffer 4")
end, { desc = "Tab 4" })

vim.keymap.set("n", "5", function()
	vim.cmd("BufferLineGoToBuffer 5")
end, { desc = "Tab 5" })

vim.keymap.set("n", "6", function()
	vim.cmd("BufferLineGoToBuffer 6")
end, { desc = "Tab 6" })

vim.keymap.set("n", "7", function()
	vim.cmd("BufferLineGoToBuffer 7")
end, { desc = "Tab 7" })

vim.keymap.set("n", "8", function()
	vim.cmd("BufferLineGoToBuffer 8")
end, { desc = "Tab 8" })

vim.keymap.set("n", "9", function()
	vim.cmd("BufferLineGoToBuffer 9")
end, { desc = "Tab 9" })

vim.keymap.set("n", "0", function()
	vim.cmd("BufferLineGoToBuffer -1")
end, { desc = "Last Tab" })

vim.keymap.set("n", "<leader>cb", function()
	vim.cmd("BufferLineCloseOthers")
end, { desc = "Close All Buffers" })

----- ### LUASNIP ### -----
vim.keymap.set({ "i" }, "``", function()
	require("luasnip").expand()
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<c-l>", function()
	require("luasnip").jump(1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<c-j>", function()
	require("luasnip").jump(-1)
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<c-e>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { silent = true })

------ ### ZENMODE ### -----
vim.keymap.set("n", "<c-z>", function()
	vim.cmd("ZenMode")
end, { desc = "Zen Mode" })
