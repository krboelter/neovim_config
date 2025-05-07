-- LEADER = SPACE_BAR
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "mm", ":syntax sync fromstart<CR>")

-- allows the ability to move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- pressing < or > in visual mode keeps shifting the text
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- keep <C-d> & <C-u> (half page jumps) to keep cursor in the middle
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- (greatest keymap ever) keep first 'p' when replacing word
vim.keymap.set("x", "<leader>p", "\"_dP")

-- making yank go to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- do the same thing for delete
vim.keymap.set("n", "<leader>d", "\"+d")
vim.keymap.set("v", "<leader>d", "\"+d")

-- basic helix movements
vim.keymap.set("n", "gs", "^")
vim.keymap.set("n", "gl", "$")
-- never hit Q
vim.keymap.set("n", "Q", "<nop>")

-- g/ will set nohighlight
vim.keymap.set("n", "g/", ":noh<CR>", { noremap = true, silent = true })

-- jk in insert mode will exit insert mode
vim.keymap.set("i", "jk", "<ESC>")

-- <leader>s will change word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- vim.api.nvim_set_keymap('i', '<Enter>', '<CR>', { noremap=true, silent=true })
