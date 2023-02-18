-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_width = 25
vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_indent_markers = 1

vim.cmd('nnoremap <C-n> :NvimTreeToggle<CR>')
vim.cmd('nnoremap <C-f> :NvimTreeFocus<CR>')
-- vim.cmd('nnoremap <C-n> :NvimTreeFindFile<CR>')
-- vim.cmd('nnoremap <C-n> :NvimTreeCollapse<CR>')


-- -- OR setup with some options
-- require("nvim-tree").setup({
--   sort_by = "case_sensitive",
--   view = {
--     width = 30,
--     mappings = {
--       list = {
--         { key = "u", action = "dir_up" },
--       },
--     },
--   },
--   renderer = {
--     group_empty = true,
--   },
--   filters = {
--     dotfiles = true,
--   },
-- })
