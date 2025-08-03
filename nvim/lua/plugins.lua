local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)

--------- ##### LAZY PLUGINS ##### -----------

require("lazy").setup({

	spec = {

		----- ### TELESCOPE ### -----
		{
			"nvim-telescope/telescope.nvim",
			tag = "0.1.8",
			dependencies = {
				"nvim-lua/plenary.nvim",
			},
			config = function()
				require("config.telescope")
			end,
		},

		----- ### FZF MODULE FOR TELESCOPE ### -----
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},

		----- ### TREESITTER MODULE FOR TELESCOPE -----
		{
			"nvim-treesitter/nvim-treesitter",
			branch = "master",
			lazy = false,
			build = ":TSUpdate",
		},

		------ ### WHICH-KEY ### -----
		{
			"folke/which-key.nvim",
			event = "VeryLazy",
		},

		----- ### LUALINE ### -----
		{
			"nvim-lualine/lualine.nvim",
			dependencies = {
				"nvim-tree/nvim-web-devicons",
			},
			config = function()
				require("config.lualine")
			end,
		},

		----- ### TOKYONIGHT THEME ### -----
		{
			"folke/tokyonight.nvim",
			lazy = false,
			priority = 1000,
			-- config = function()
			-- 	require("config.themes.tokyonight")
			-- end,
		},

		---- ### GRUVBOX THEME ### -----
		{
			"morhetz/gruvbox",
			lazy = false,
			priority = 1000,
			-- config = function()
			-- 	require("config.themes.gruvbox")
			-- end,
		},

		----- ### CATPPUCCIN THEME ### -----
		{
			"catppuccin/nvim",
			name = "catppuccin",

			config = function()
				require("config.themes.catppuccin")
			end,
		},

		----- ### BUFFERLINE ### -----
		{
			"akinsho/bufferline.nvim",
			version = "*",
			config = function()
				require("config.bufferline")
			end,
		},

		----- ### NOTIFY ### -----
		{
			"rcarriga/nvim-notify",
			config = function()
				require("config.nvim-notify")
			end,
		},

		----- ### TRANSPARENT BACKGROUND ### -----
		{
			"xiyaowong/transparent.nvim",
			config = function()
				require("config.transparent")
			end,
		},

		----- ### MASON ### -----
		{
			"mason-org/mason.nvim",
			config = function()
				require("config.mason")
			end,
		},

		----- ### NUI ### -----
		{
			"MunifTanjim/nui.nvim",
		},

		----- ### NOICE ### -----
		{
			"folke/noice.nvim",
			event = "VeryLazy",
			config = function()
				require("config.noice")
			end,
		},

		----- ### DASHBOARD NVIM ### -----
		{
			"nvimdev/dashboard-nvim",
			event = "VimEnter",
			config = function()
				require("config.dashboard-nvim")
			end,
		},

		----- ### NEOGIT ### -----
		{
			"NeogitOrg/neogit",
			dependencies = {
				"sindrets/diffview.nvim",
			},
			config = function()
				require("config.neogit")
			end,
		},

		----- ### CMP ### -----
		{
			"hrsh7th/nvim-cmp",
			dependencies = {
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-cmdline",
				"saadparwaiz1/cmp_luasnip",
			},
			config = function()
				require("config.nvim-cmp")
			end,
		},
		------ ### NEOSCROLL ### -----
		{
			"karb94/neoscroll.nvim",
			config = function()
				require("config.neoscroll")
			end,
		},
		------ ### CONFORM (FORMATTER) ### ----

		{

			"stevearc/conform.nvim",
			config = function()
				require("config.conform")
			end,
		},
		------ ### COMMENT ### -----
		{
			"numToStr/Comment.nvim",
			config = function()
				require("config.Comment")
			end,
		},
		----- ### INDENT-BLANKLINE ### -----
		{
			"lukas-reineke/indent-blankline.nvim",
			main = "ibl",
			config = function()
				require("config.indent-blankline")
			end,
		},
		----- ### LSPs ### -----
		{
			"neovim/nvim-lspconfig",
			config = function()
				require("config.lsp.ts_ls")
				require("config.lsp.lua_ls")
				require("config.lsp.html")
				require("config.lsp.cssls")
			end,
			config = function()
				require("config.lsp.lsp_enables.enables")
			end,
		},

		----- ### SNIPPETS ### ------
		{
			"L3MON4D3/LuaSnip",

			-- follow latest release.
			version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
			-- install jsregexp (optional!).§
			build = "make install_jsregexp",
			dependencies = { "rafamadriz/friendly-snippets" },
			config = function()
				require("config.luasnip")
			end,
		},

		----- ### AUTOPAIRS ### -----
		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = true,
		},
		------ ### YAZI ### -----
		{
			"mikavilpas/yazi.nvim",
			event = "VeryLazy",
		},
		------ ### CRUMBS ### ------
		{

			"nvimdev/lspsaga.nvim",
			config = function()
				require("config.lspsaga")
			end,
		},

		{
			"akinsho/toggleterm.nvim",
			config = function()
				require("config.toggleterm")
			end,
		},

		{
			"folke/zen-mode.nvim",
		},
	},
})
