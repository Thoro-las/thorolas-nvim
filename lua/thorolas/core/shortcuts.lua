vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Stop Search Highlight' });

vim.keymap.set('n', '<leader>o', "o<ESC>", { desc = 'Empty Line After' });
vim.keymap.set('n', '<leader>O', "O<ESC>", { desc = 'Empty Line Before' });
vim.keymap.set('n', '<leader>i', "o<ESC>O", { desc = 'Empty Surrounding' });
vim.keymap.set('n', '<leader>w', "w", { desc = 'Write & Save' });

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Go To Left Window', noremap = true, silent = true });
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Go To Bottom Window', noremap = true, silent = true });
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Go To Top Window', noremap = true, silent = true });
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Go To Right Window', noremap = true, silent = true });

vim.keymap.set('n', '<C-up>', ':resize -2<CR>', { desc = 'Shrink Window Vertically', noremap = true, silent = true });
vim.keymap.set('n', '<C-down>', ':resize +2<CR>', { desc = 'Spread Window Vertically', noremap = true, silent = true });
vim.keymap.set('n', '<C-left>', ':vertical resize +2<CR>', { desc = 'Shrink Window Horizontally', noremap = true, silent = true });
vim.keymap.set('n', '<C-right>', ':vertical resize -2<CR>', { desc = 'Spread Window Horizontally', noremap = true, silent = true });

vim.keymap.set('n', '<tab>', ':bnext<CR>', { desc = 'Go To Next Buffer', noremap = true, silent = true});
vim.keymap.set('n', '<s-tab>', ':bprevious<CR>', { desc = 'Go To Previous Buffer', noremap = true, silent = true});

vim.keymap.set('i', 'jk', '<ESC>', { desc = 'Leave Insert Mode', noremap = true, silent = true });
vim.keymap.set('i', 'kj', '<ESC>', { desc = 'Leave Insert Mode', noremap = true, silent = true });

vim.keymap.set('v', '<', '<gv', { desc = 'Unindent Selection', noremap = true, silent = true });
vim.keymap.set('v', '>', '>gv', { desc = 'Indent Selection', noremap = true, silent = true });

vim.keymap.set('v', '<a-j>', ':m \'>+<CR>==gv', { desc = 'Move Selection Down', noremap = true, silent = true });
vim.keymap.set('v', '<a-k>', ':m \'<-2<CR>==gv', { desc = 'Move Selection Up', noremap = true, silent = true });

vim.keymap.set('t', '<C-h>', '<C-\\><C-N><C-w>h', { desc = 'Move To Left Window', silent = true });
vim.keymap.set('t', '<C-j>', '<C-\\><C-N><C-w>j', { desc = 'Move To Bottom Window', silent = true });
vim.keymap.set('t', '<C-k>', '<C-\\><C-N><C-w>k', { desc = 'Move To Top Window', silent = true });
vim.keymap.set('t', '<C-l>', '<C-\\><C-N><C-w>l', { desc = 'Move To Right Window', silent = true });
