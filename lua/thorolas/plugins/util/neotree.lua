return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = false,

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim"
    },

    config = function()
        local wk = require("thorolas.utility/keymaps");
        wk.map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle Explorer" })


        require("neo-tree").setup({
            window = {
                mappings = {
                    ["l"] = "open",
                    ["h"] = "close_node",
                    ["L"] = "set_root",
                    ["H"] = "navigate_up"
                }
            }
        });
    end
}
