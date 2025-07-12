local kw = require("thorolas.utility.keymaps")

kw.mapd('n', '<leader>w', "w", 'Write & Save')

kw.mapsnr('v', '<', '<gv', 'Unindent Selection')
kw.mapsnr('v', '>', '>gv', 'Indent Selection')
kw.mapsnr('v', '<a-j>', ':m \'>+<CR>==gv', 'Move Selection Down')
kw.mapsnr('v', '<a-k>', ':m \'<-2<CR>==gv', 'Move Selection Up')

kw.mapsnr('n', '<Esc>', '<cmd>nohlsearch<CR>', 'Stop Search Highlight');

kw.command("<leader>w", "w!", "Save")
kw.command("<leader>x", "bdelete", "Kill Buffer")

kw.group("<leader>q", "quit")
kw.command("<leader>qw", "wqall!", "Save All & Quit")
kw.command("<leader>qq", "qall!", "Cancel & Quit All")

kw.group("<leader>g", "lsp")
kw.command("<leader>gc", "lua vim.lsp.buf.rename()", "Rename")
kw.command("<leader>gh", "lua vim.lsp.buf.hover()", "LSP Hover")
kw.command("<leader>ga", "lua vim.lsp.buf.code_action()", "Code Action")
kw.command("<leader>gd", "lua vim.diagnostic.open_float()", "Show Diagnostics")
kw.command("<leader>gf", "lua vim.lsp.buf.format({async = true})", "Format Document")
