require('telescope').setup {
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}
require('telescope').load_extension('fzy_native')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})      -- Find files
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})       -- Live grep
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})         -- Open buffers
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})       -- Help tags
