local ls = require("luasnip")

ls.setup({
	keep_roots = true,
	link_roots = true,
	link_children = true,
	-- Update more often, :h events for more info.
	update_events = "TextChanged,TextChangedI",
	delete_check_events = "TextChanged",
	enable_autosnippets = true,
})

require("luasnip.loaders.from_vscode").load({ include = { "javascript", "html", "css", "typescript", "lua", "bash" } })
