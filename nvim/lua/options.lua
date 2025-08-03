-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.wo.number = true

vim.opt.fillchars:append({ eob = " " })

vim.o.cursorline = true

vim.cmd([[
hi Cursor guifg=green guibg=green,
hi Cursor2 guifg=red guibg=red
set guicursor=n-v-c:block,a:blinkwait100-blinkoff200-blinkon200-Cursor/lCursor,i-ci-ve:ver50-Cursor2/lCursor2,
    ]])
