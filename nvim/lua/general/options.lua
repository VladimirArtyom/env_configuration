
vim.opt.backup = false --creates a backup file
vim.opt.clipboard = "unnamedplus" --use register + for system clipboard
vim.opt.cmdheight = 2
vim.opt.completeopt = { "menuone" , "noselect" }
vim.opt.conceallevel = 0
vim.opt.fileencoding = "utf-8"
vim.opt.hlsearch = true
vim.opt.ignorecase = true --Ignore case when using searchpattern
vim.opt.mouse = "a" -- Make mouse usable through nvim environment
vim.opt.pumheight = 10 
vim.opt.showmode = true -- Take a look at current mode
vim.opt.showtabline = 2 -- always show tabs
vim.opt.smartcase = true 
vim.opt.smartindent = true
vim.opt.splitbelow = true -- Always split below of the current window ( Horizontal ) 
vim.opt.splitright = true -- Always split right of the current window ( Vertical ) 
vim.opt.swapfile = false

vim.opt.termguicolors = true
vim.opt.timeoutlen = 1000 -- timeout for a mapped sequence to complete
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.writebackup = false
vim.opt.expandtab = true --
vim.opt.shiftwidth = 2 -- Spaces used for >>, for each identation
vim.opt.tabstop = 2
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber=true
vim.opt.numberwidth = 4 -- set width of the number
vim.opt.signcolumn = "yes"
vim.opt.scrolloff=8
vim.opt.sidescrolloff = 8
vim.opt.guifont = "Nerd Font:h20"
vim.opt.autoread = true
vim.opt.encoding="utf-8"
vim.opt.fileencoding="utf-8"

vim.opt.shortmess:append "fwlc"
vim.opt.expandtab = false

vim.cmd([[
  augroup Makefile
  autocmd!
  autocmd FileType make setlocal noexpandtab
  augroup END
]])

-- vim.g.OmniSharp_server_use_mono = 1
--vim.g.OmniSharp_server_path = "/mnt/Development-Main/ngoding-env/omnisharp/mono-packaging/run"
