local kw = require("thorolas.utility.keymaps")

kw.group("<leader>c", "configuration")
kw.command("<leader>cc", "<cmd>e ~/.config/nvim<CR>", "Open Configuration")
kw.command("<leader>cp", "<cmd>e ~/.config/nvim/lua/thorolas/plugins<CR>", "Open Plugins Configuration")
kw.command("<leader>cs", "<cmd>e ~/.config/nvim/lua/thorolas/snippets<CR>", "Open Snippets Configuration")
