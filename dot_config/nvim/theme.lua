--require("catppuccin").setup({
--	flavour = "mocha",
--})

vim.cmd('colorscheme catppuccin')

-- Override the background to #000000
vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "#000000" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
vim.api.nvim_set_hl(0, "VertSplit", { bg = "#000000" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#000000" })
