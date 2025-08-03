require("catppuccin").setup({
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		treesitter = true,
		notify = false,
		mini = {
			enabled = true,
			indentscope_color = "",
		},
	},

	color_overrides = {
		mocha = {
			---- ### HTML EXAMPLE ### -----
			-- BG
			base = "#0D1117",
			-- External Windows, Not Within the Editor
			mantle = "#000000",
			-- External Windows, Not Within the Editor
			crust = "#000000",
			-- HTML Elements
			mauve = "#7EE787",

			-- Actual Text
			blue = "#ffffff",
			-- Attribute Name
			yellow = "#79C0FF",
			-- Attribute Value
			green = "#A5D6FF",
		},
	},
})

vim.cmd.colorscheme("catppuccin")
