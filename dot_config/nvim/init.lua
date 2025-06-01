-- Install VimPlug
-- sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
--       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'       

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

vim.call('plug#', 'catppuccin/nvim', { as = 'catppuccin' })
Plug('kyazdani42/nvim-tree.lua')
Plug('kyazdani42/nvim-web-devicons')
Plug('stevearc/oil.nvim')
Plug('echasnovski/mini.nvim')

Plug('nvim-lua/plenary.nvim')
-- Ripgrep recommended - brew install ripgrep
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.x' })
Plug('nvim-telescope/telescope-fzy-native.nvim', { ['do'] = 'make' })
Plug('nvim-treesitter/nvim-treesitter')

Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')
Plug('simrat39/rust-tools.nvim')

vim.call('plug#end')

local config_path = os.getenv("HOME") .. "/.config/nvim/"
package.path = config_path .. "?.lua;" .. package.path

require "common"
dofile(config_path .. "theme.lua")
dofile(config_path .. "mini.lua")
dofile(config_path .. "telescope.lua")

require("mason").setup({
    ui = {
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
        },
    }
})
require("mason-lspconfig").setup()

-- setup rust
local rt = require("rust-tools")

rt.setup({
    server = {
        on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
    },
})

-- LSP Diagnostics Options Setup 
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({name = 'DiagnosticSignError', text = ''})
sign({name = 'DiagnosticSignWarn', text = ''})
sign({name = 'DiagnosticSignHint', text = ''})
sign({name = 'DiagnosticSignInfo', text = ''})

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
