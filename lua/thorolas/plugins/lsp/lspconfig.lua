return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local server_dir = vim.fn.stdpath("config") .. "/lua/thorolas/plugins/lsp/servers"
        local files = vim.fn.globpath(server_dir, "*.lua", false, true)

        for _, file in ipairs(files) do
            local filename = vim.fn.fnamemodify(file, ":t:r")
            local ok, server = pcall(require, "thorolas.plugins.lsp.servers." .. filename)
            if ok and type(server) == "function" then
                server(capabilities)
            else
                vim.notify("Failed to load LSP server: " .. filename)
            end
        end
    end,
}
