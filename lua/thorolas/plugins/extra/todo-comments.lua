return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("todo-comments").setup()

        local kw = require("thorolas.utility.keymaps")
        kw.command("<leader>fl", "TodoTelescope", "Show Todos")
    end
}
