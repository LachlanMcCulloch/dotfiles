# Neovim Cheat Sheet

**Leader Key:** `Space`

---

## File Navigation

| Key | Action |
|-----|--------|
| `<leader>o` | Toggle mini.files explorer |
| `<leader>ff` | Telescope: find files |
| `<leader>fg` | Telescope: live grep (search file contents) |
| `<leader>fb` | Telescope: browse open buffers |
| `<leader>fh` | Telescope: search help tags |

**Telescope tips:**
- `<C-n>` / `<C-p>` — navigate results
- `<C-x>` / `<C-v>` — open in split / vsplit
- `<Esc>` or `<C-c>` — close picker
- Live grep requires `ripgrep` (`brew install ripgrep`)

---

## LSP / Diagnostics

| Key | Action |
|-----|--------|
| `<leader>e` | Show diagnostics for current line (float) |
| `K` | Hover documentation |
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Go to references |
| `gi` | Go to implementation |
| `[d` / `]d` | Prev / next diagnostic |

---

## Rust (in `.rs` files)

| Key | Action |
|-----|--------|
| `K` | Hover actions (rustaceanvim) |
| `<leader>a` | Code actions |

Auto-format with rustfmt runs on save.

---

## Mini.nvim

**mini.comment:**

| Key | Action |
|-----|--------|
| `gcc` | Toggle comment on current line |
| `gc` + motion | Comment out (e.g. `gcap` = paragraph) |
| `gc` (visual) | Comment selection |

**mini.diff** — diff signs appear in the sign column automatically.

**mini.completion** — completion triggers automatically as you type.

---

## Buffers & Windows

| Key | Action |
|-----|--------|
| `:bn` / `:bp` | Next / previous buffer |
| `:bd` | Delete (close) buffer |
| `<C-w>s` / `<C-w>v` | Split horizontal / vertical |
| `<C-w>h/j/k/l` | Navigate between windows |
| `<C-w>q` | Close window |

---

## Editor Settings

| Setting | Value |
|---------|-------|
| Indentation | 2 spaces |
| Scroll padding | 7 lines above/below cursor |
| Working dir | Auto-changes to current file's directory |
| Swapfile | Disabled |
| Line wrap | On |

---

## Useful Commands

| Command | Action |
|---------|--------|
| `:Mason` | Manage LSP servers, linters, formatters |
| `:Telescope` | Browse all Telescope pickers |
| `:checkhealth` | Diagnose config/plugin issues |
