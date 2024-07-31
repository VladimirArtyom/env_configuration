local opts = { noremap = true, silent = true}

local terminal_opts = { silent = true}
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts) -- ALL Modes

-- Modes 
--
-- normal_mode = "n"
-- insert_mode = "i"
-- visual_mode = "v"
-- visual_block_mode = "x"
-- term_mode = "t",
-- command_mode = "c"
--
-- Normal MODE 
-- Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resizing with arrows 
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Keymap for marks
keymap("n", "<leader>mda", 'delm! | delm A-Z0-9<CR>', { silent=true, noremap=true, desc='Delete all marks'})
keymap("n", "<leader>mdl", 'delm[arks]!<CR>', { silent=true, noremap=true, desc='Delete local marks'})
keymap("n", "<leader>mdg", 'delmarks A-Z-0-9<CR>', { silent=true, noremap=true, desc='Delete global marks'})

-- Keymap For Tmux
keymap("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)
keymap("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)
keymap("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
keymap("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)

-- Visual
--
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text in visual mode
--
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Do not replace paste
keymap("v", "p", '"_dP', opts )

-- VISUAL BLOCK --- 

keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

--Terminal
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", terminal_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", terminal_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", terminal_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", terminal_opts)

-- Nvim Tree
keymap("n", "<leader>o", ":NvimTreeOpen<CR>", { silent=true, noremap=true, desc="Open NvimTree"})

keymap("n", "<leader>c", ":NvimTreeClose<CR>", { silent=true, noremap=true, desc="Close NvimTree"})

-- Diagnostic keymaps

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {desc = 'Go to previous diagnostic message'})
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {desc = 'Go to next diagnostic message'})
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message'})
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic list'})


-- EMMET
vim.g.closetag_xhtml_filenames = "*.xhtml, *.jsx, *.tmpl"
vim.g.closetag_filenames = "*.html, *.xhtml, *.phtml, *.tmpl"
vim.g.closetag_filetypes ="html, xhtml, phtml, tmpl"
vim.g.closetag_xhtml_filetypes = "xhtml, jsx"
vim.g.closetag_regions = {
    ['typescript.tsx'] = 'jsxRegion,tsxRegion',
    ['javascript.jsx'] = 'jsxRegion',
    ['typescriptreact'] = 'jsxRegion,tsxRegion',
    ['javascriptreact'] = 'jsxRegion',
}
vim.g.livepreview_previewer = 'open -a evince'
