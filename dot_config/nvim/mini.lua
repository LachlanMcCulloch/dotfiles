require('mini.basics').setup()
require('mini.files').setup()
require('mini.comment').setup()
require('mini.fuzzy').setup()
require('mini.notify').setup()
require('mini.diff').setup()
require('mini.git').setup()
require('mini.completion').setup()
require('mini.snippets').setup()

local MiniFiles = require("mini.files")

-- Toggle function for mini.files
local function toggle_mini_files()
	local _ = MiniFiles.close()
		or MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
	-- Optionally opens whole cwd which may be useful
	vim.schedule(function()
		MiniFiles.reveal_cwd()
	end, 0)
end

-- vim.keymap.set("n", "<leader>o", toggle_mini_files)
-- vim.keymap.set('n', '<leader>o', function()
--   require('mini.files').toggle()
-- end, { desc = 'Toggle mini.files' })

vim.keymap.set("n", "<leader>o", function()
  local MiniFiles = require("mini.files")

  if MiniFiles.close() then return end

  local bufname = vim.api.nvim_buf_get_name(0)
  local path = vim.uv.fs_stat(bufname) and bufname or vim.fn.getcwd()
  MiniFiles.open(path, false)

  -- Wait a tiny bit before revealing cwd
  vim.defer_fn(function()
    local fs_entry = MiniFiles.get_fs_entry()
    if fs_entry then
      MiniFiles.reveal_cwd()
    end
  end, 50)
end)

-- Listen to custom terminal input using the Vim "expr" mapping
-- vim.keymap.set('n', '<Plug>(MiniFilesToggle)', toggle_mini_files, {})
-- vim.api.nvim_set_keymap('n', '<Esc>]1337;MiniFilesToggle', '<Plug>(MiniFilesToggle)', { noremap = true, silent = true })

