local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local nnoremap = require("user.keymap_utils").nnoremap
local inoremap = require("user.keymap_utils").inoremap
local xnoremap = require("user.keymap_utils").xnoremap
local vnoremap = require("user.keymap_utils").vnoremap

map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Swap between last two buffers
nnoremap("<leader>'", "<C-^>", { desc = "Switch to last buffer" })

-- -- Save with leader key
-- nnoremap("<leader>w", "<cmd>w<cr>")
--
-- -- Save all with leader key
-- nnoremap("<leader>ww", "<cmd>wa<cr>")
--
-- -- Quit with leader key
-- nnoremap("<leader>q", "<cmd>q<cr>")
--
-- -- Quit with leader key
-- nnoremap("<leader>qq", "<cmd>q!<cr>")
--
-- -- Save and Quit with leader key
-- nnoremap("<leader>z", "<cmd>wq<cr>")
--
-- -- Save and Quit all with leader key
-- nnoremap("<leader>zz", "<cmd>wqa<cr>")
--
-- Turn off highlighted results
nnoremap("<leader>no", "<cmd>noh<cr>")

-- Always use <C-c> to exit insert mode
inoremap("<C-c>", "<esc>", { silent = false })

-- Harpoon Keymaps
nnoremap("<leader>a", ":lua require('harpoon.mark').add_file()<cr>", { silent = true })
nnoremap("<C-e>", ":lua require('harpoon.ui').toggle_quick_menu()<cr>", { silent = true })
nnoremap("<C-h>", ":lua require('harpoon.ui').nav_file(1)<cr>", { silent = true })
nnoremap("<C-j>", ":lua require('harpoon.ui').nav_file(2)<cr>", { silent = true })
nnoremap("<C-k>", ":lua require('harpoon.ui').nav_file(3)<cr>", { silent = true })
nnoremap("<C-l>", ":lua require('harpoon.ui').nav_file(4)<cr>", { silent = true })

-- Netrw Keymaps
nnoremap("<leader>e", vim.cmd.Ex, { silent = true })
nnoremap("<leader>w", ":Rex<CR>", { silent = true })
-- Usage Keymaps

--Creata a new line below or after the current line
vim.keymap.set("n", "<CR>", "m`o<Esc>``")
vim.keymap.set("n", "<S-CR>", "m`O<Esc>``")

-- Binds to delete/change/replace without yanking.
xnoremap("<leader>p", '"_dP', { silent = true })
nnoremap("<leader>d", '"_d', { silent = true })
nnoremap("<leader>D", '"_D', { silent = true })
nnoremap("<leader>c", '"_c', { silent = true })

-- TheVimeagen Keymaps
vnoremap("J", ":m '>+1<CR>gv=gv", { silent = true })
vnoremap("K", ":m '<-2<CR>gv=gv", { silent = true })
nnoremap("<C-d>", "<C-d>zz", { silent = true })
nnoremap("<C-u>", "<C-u>zz", { silent = true })
