return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    config = function()
        vim.keymap.set({ "n", "x", "o" }, "f", function()
            require("flash").jump({
                search = {
                    mode = "search",
                    max_length = 0, -- ← disables filtering characters like 'f', allows full label set
                },
                label = {
                    after = false,
                    before = true,
                    uppercase = false,
                    reuse = "all",
                },
                jump = {
                    autojump = true,
                },
                highlight = {
                    backdrop = true,
                },
            })
        end, { desc = "Hop-style Flash Jump" });
    end,
    keys = {
        { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
        { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
        { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
        { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
}
