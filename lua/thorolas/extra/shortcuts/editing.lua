local kw = require("thorolas.utility.keymaps")

vim.keymap.set('v', '<', '<gv', { desc = 'Unindent Selection', noremap = true, silent = true });
vim.keymap.set('v', '>', '>gv', { desc = 'Indent Selection', noremap = true, silent = true });

vim.keymap.set('v', '<a-j>', ':m \'>+<CR>==gv', { desc = 'Move Selection Down', noremap = true, silent = true });
vim.keymap.set('v', '<a-k>', ':m \'<-2<CR>==gv', { desc = 'Move Selection Up', noremap = true, silent = true });
