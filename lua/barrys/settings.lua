vim.opt.termguicolors = true



local opt = vim.opt

vim.opt.background = "light"
vim.opt.background = "dark"


-- vim.o.encoding = "UTF-8" -- Output encoding
opt.encoding = "UTF-8" -- Output encoding
--vim.o.path+='**'

-- vim.o.exrc = true -- When using vim ., it executes the vimrc there if exists
opt.exrc = true                                      -- When using vim ., it executes the vimrc there if exists
-- vim.o.title = true -- Set terminal title to current file name
opt.title = true                                     -- Set terminal title to current file name
opt.tabstop = 4                                      -- Ident using x spaces
opt.softtabstop = 4
opt.expandtab = true                                 -- Converts tabs into spaces
-- vim.o.shiftwidth = 4 -- When shifting, ident using x spaces
opt.shiftwidth = 4                                   -- When shifting, ident using x spaces
-- vim.o.autoindent = true -- Copy indentation from the last line when starting a new line
opt.autoindent = true                                -- Copy indentation from the last line when starting a new line
-- vim.o.smartindent = true -- Copy indentation based on the syntax/style of code we are editing
opt.smartindent = true                               -- Copy indentation based on the syntax/style of code we are editing
-- vim.o.relativenumber = true -- Set relative numbers
opt.relativenumber = true                            -- Set relative numbers
-- vim.o.number = true -- Set current number overriding relative numbers
opt.number = true                                    -- Set current number overriding relative numbers
-- vim.o.ignorecase = true -- Set to work with smartcase
opt.ignorecase = true                                -- Set to work with smartcase
-- vim.o.smartcase = true -- Set smatcase for case sensitive in searchs
opt.smartcase = true                                 -- Set smatcase for case sensitive in searchs
-- vim.o.undodir = vim.fn.stdpath("config") .. "/undodir" -- Set undo directory
opt.undodir = vim.fn.stdpath("config") .. "/undodir" -- Set undo directory
-- vim.o.undofile = true -- Enable save of undos
opt.undofile = true                                  -- Enable save of undos
-- vim.o.incsearch = true -- Highlight as we search
opt.incsearch = true                                 -- Highlight as we search
-- vim.o.scrolloff = 8 -- Scroll when is 8 rows above or bellow
opt.scrolloff = 8                                    -- Scroll when is 8 rows above or bellow
-- vim.o.wrap = false -- Text keep going through the page
opt.wrap = false                                     -- Text keep going through the page
-- vim.o.autoread = true -- AutoReload file if it has been changed outside neovim
opt.autoread = true                                  -- AutoReload file if it has been changed outside neovim
-- vim.o.hidden = true -- Let us create a new buffer without saving it. It asks to save when we leave the ViM
opt.hidden = true                                    -- Let us create a new buffer without saving it. It asks to save when we leave the ViM
-- vim.o.writebackup = false -- Some servers have issues with backup files, see #649
opt.writebackup = false                              -- Some servers have issues with backup files, see #649
-- vim.o.splitbelow = true -- Horizontal splits will automatically be below
opt.splitbelow = true                                -- Horizontal splits will automatically be below
--vim.o.splitright = true				-- Vertical splits will automatically be to the right
-- vim.o.laststatus = 2 -- Always display the status line
-- vim.o.cursorline = true -- Enable highlighting of the current line
opt.cursorline = true -- Enable highlighting of the current line
-- vim.o.showtabline = 2 -- Always show tabs
opt.showtabline = 2   -- Always show tabs
-- vim.o.timeout = false               -- Doesn't allow neovim to wait for a second key
--vim.o.timeoutlen = 200              -- Remove some delay on vim waiting for leader sequence
-- vim.o.updatetime = 250 -- Add update time so that disgnostics on hover works
opt.updatetime = 250       -- Add update time so that disgnostics on hover works
-- vim.o.swapfile = false -- Disable swap file getting ride of the dialog to choose if we want to recover the file
opt.swapfile = false       -- Disable swap file getting ride of the dialog to choose if we want to recover the file
-- vim.o.inccommand = "nosplit" -- Highlight search and replace
opt.inccommand = "nosplit" -- Highlight search and replace
opt.laststatus = 3         -- Status bar always on bottom (shared)
opt.foldmethod = "indent"  -- Set fold to indent
opt.foldenable = false     -- Disable automatic fold on launch
-- opt.clipboard = "unnamedplus" -- Allow yank to clipboard
vim.wo.spell = false       -- Enable/Disable spell
vim.bo.spelllang = "en_us" -- Set spell dictionary
vim.opt.mouse = "a"        -- Oh cmon... Get the hell off of my house
opt.mouse = "a"            -- Oh cmon... Get the hell off of my house

-- Folds
-- vim.o.foldcolumn = "1" -- '0' is not bad
-- vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
-- vim.o.foldlevelstart = 99
-- vim.o.foldenable = true
opt.foldcolumn = "1" -- '0' is not bad
opt.foldlevel = 99   -- Using ufo provider need a large value, feel free to decrease the value
opt.foldlevelstart = 99
opt.foldenable = true

opt.termguicolors = true


vim.g.auto_pairs_map_start = '<M-e>'
vim.g.auto_pairs_map_end = '<M-e>'
