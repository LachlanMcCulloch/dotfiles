vim.wo.number = true
vim.g.mouse = 'a'
vim.opt.encoding= "utf-8"

vim.opt.swapfile = false

vim.opt.scrolloff = 7
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

vim.opt.wrap = true

vim.opt.fileformat = "unix"

-- Always set cwd to the directory of the currently opened file
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = "*",
--   callback = function()
--     local path = vim.fn.expand("%:p:h")
--     if vim.fn.isdirectory(path) == 1 then
--       vim.cmd("lcd " .. path)
--     end
--   end,
-- })

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local path = vim.fn.expand("%:p:h")
    if vim.fn.isdirectory(path) == 1 then
      vim.cmd("lcd " .. path)
    end
  end,
})

vim.g.mapleader = ' '   -- Now use Space as leader

-- Enable Neovim remote control (needed)
vim.cmd("set ttyfast")
vim.cmd("set shellcmdflag=-ic")
