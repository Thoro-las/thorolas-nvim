return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                show_close_icon = false,
                show_buffer_close_icons = false,
                separator_style = "slant",
                enforce_regular_tabs = true,
                always_show_bufferline = true,
            },
        })
    end,
}
