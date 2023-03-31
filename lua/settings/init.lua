-- [[ Setting options ]]
-- See `:help vim.o`

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true
vim.o.relativenumber = true

-- Enable mouse mode
vim.o.mouse = ''

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Scrolloff
vim.o.scrolloff = 10

-- Hide mode
vim.cmd("set noshowmode")

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.o.termguicolors = true
vim.cmd [[colorscheme onedark]]

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Rust settings
vim.g.rustfmt_autosave = 1

-- C/C++ settings
vim.g['clang_format#style_options'] = {
	IndentWidth = 4,
	AllowAllParametersOfDeclarationOnNextLine = true,
	AllowAllArgumentsOnNextLine = true,
	AlignAfterOpenBracket = "BlockIndent",
	AlwaysBreakTemplateDeclarations = "Yes",
	BinPackParameters = false,
	BreakBeforeBraces = "Allman"
}
-- CMake settings
vim.g.cmake_link_compile_commands = 1

-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Keymaps for working in splitscreen
vim.keymap.set('n', '<F1>', '<C-w>h')
vim.keymap.set('n', '<F2>', '<C-w>j')
vim.keymap.set('n', '<F3>', '<C-w>k')
vim.keymap.set('n', '<F4>', '<C-w>l')

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- NvimTree keymaps
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>')
