vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Use J and K in Visual mode to move text around.
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Also indent the text.

vim.keymap.set("n", "J", "mzJ`z") -- Takes next line and moves it to the end of the current line

vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Make CTRL-d and -u move the screen around half a page and keep the 
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]]) -- If used instead of p the current yank will stay in the buffer, if you paste over a word

-- next greatest remap ever : asbjornHaland
-- leader-y yanks into the system clipboard instead of the vim clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

