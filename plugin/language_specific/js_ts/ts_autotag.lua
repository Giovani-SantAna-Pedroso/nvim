vim.pack.add({ { src = "https://github.com/windwp/nvim-ts-autotag" } })

local n = require("nvim-ts-autotag")
n.setup({})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	underline = true,
	virtual_text = {
		spacing = 5,
		severity = { min = vim.diagnostic.severity.WARN },
	},
	update_in_insert = true,
})
