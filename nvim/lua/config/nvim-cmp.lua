local cmp = require("cmp")

cmp.setup({

	mapping = cmp.mapping.preset.insert({
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-u>"] = cmp.mapping.scroll_docs(4),
		["<C-c>"] = cmp.mapping.complete(),
		["<C-a>"] = cmp.mapping.abort(),
		["<TAB>"] = cmp.mapping.confirm({ select = true }),
	}),

	sources = cmp.config.sources({
		{ name = "path" }, -- file path completions
		{ name = "buffer" },
		{ name = "luasnip" },
		{ name = "nvim_lsp" },
	}),
	window = {
		completion = cmp.config.window.bordered(), -- bordered completion popup
		documentation = cmp.config.window.bordered(), -- bordered docs window
	},
})
