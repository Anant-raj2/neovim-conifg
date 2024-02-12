local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local nnoremap = require("user.keymap_utils").nnoremap
local inoremap = require("user.keymap_utils").inoremap

map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Swap between last two buffers
nnoremap("<leader>'", "<C-^>", { desc = "Switch to last buffer" })

-- Save with leader key
nnoremap("<leader>w", "<cmd>w<cr>", { silent = false })

-- Save all with leader key
nnoremap("<leader>ww", "<cmd>wa<cr>", { silent = false })

-- Quit with leader key
nnoremap("<leader>q", "<cmd>q<cr>", { silent = false })

-- Quit with leader key
nnoremap("<leader>qq", "<cmd>q!<cr>", { silent = false })

-- Save and Quit with leader key
nnoremap("<leader>z", "<cmd>wq<cr>", { silent = false })

-- Save and Quit all with leader key
nnoremap("<leader>zz", "<cmd>wqa<cr>", { silent = false })

-- Map Oil to <leader>e
nnoremap("<leader>e", function()
	require("oil").toggle_float()
end)
-- nnoremap("<leader>e", "<cmd>Oil<cr>", { silent = false })

-- Turn off highlighted results
nnoremap("<leader>no", "<cmd>noh<cr>")

-- Always use <C-c> to exit insert mode
inoremap("<C-c>", "<esc>", { silent = false })

-- Harpoon Keymaps
nnoremap("<leader>ha", ":lua require('harpoon.mark').add_file()<cr>", {silent = true})
nnoremap("<leader>ho", ":lua require('harpoon.ui').toggle_quick_menu()<cr>", {silent = true})
-- nnoremap("<leader>hr", ":lua require('harpoon.mark').remove_file()<cr>", {silent = false})
nnoremap("<leader>1", ":lua require('harpoon.ui').nav_file(1)<cr>", {silent = true})
nnoremap("<leader>2", ":lua require('harpoon.ui').nav_file(2)<cr>", {silent = true})
nnoremap("<leader>3", ":lua require('harpoon.ui').nav_file(3)<cr>", {silent = true})
nnoremap("<leader>4", ":lua require('harpoon.ui').nav_file(4)<cr>", {silent = true})
nnoremap("<leader>5", ":lua require('harpoon.ui').nav_file(5)<cr>", {silent = true})
