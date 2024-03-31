local vim = vim
local opt = vim.opt

-- zc closes the fold
-- zo opens the fold
-- za toggles the fold

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99
opt.nofoldenable = true

local a = {
	atr,
}
