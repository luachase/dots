require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		sh = { "shfmt" },
		javascript = { "prettier", stop_after_first = true },
		typescript = { "prettier", stop_after_first = true },
		html = { "prettier", stop_after_first = true },
		css = { "prettier", stop_after_first = true },
		yaml = { "prettier", stop_after_first = true },
		json = { "prettier", stop_after_first = true },
		markdown = { "prettier", stop_after_first = true },
	},

	format_on_save = function(bufnr)
		-- Disable with a global or buffer-local variable
		if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
			return
		end

		return { timeout_ms = 500, lsp_format = "fallback" }
	end,
})
