return {
    'folke/which-key.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', 'echasnovski/mini.icons' },
    config = function()
        local mappings = {
            mode = "n",
            buffer = nil,
            silent = true,
            noremap = true,
            nowait = true,

            { "<leader>w",   "<cmd>w!<CR>",                                                   desc = "Save" },
            { "<leader>x",   "<cmd>bdelete<CR>",                                              desc = "Kill Buffer" },

            -- { "<leader>e",   "<cmd>Neotree toggle<CR>",                                       desc = "Toggle Explorer" },
            { "<leader>m",   "<cmd>Mason<CR>",                                                desc = "Mason Explorer" },

            { "<leader>q",   group = "quit" },
            { "<leader>qw",  "<cmd>wqall!<CR>",                                               desc = "Save All & Quit" },
            { "<leader>qq",  "<cmd>qall!<CR>",                                                desc = "Cancel & Quit All" },

            { "<leader>f",   group = "file" },
            { "<leader>fo",  "<cmd>Telescope oldfiles<CR>",                                   desc = "Open Recent Files" },
            { "<leader>ff",  "<cmd>Telescope find_files<CR>",                                 desc = "Find Files" },
            { "<leader>ft",  "<cmd>Telescope live_grep<CR>",                                  desc = "Search Text In Files" },
            { "<leader>fb",  "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>", desc = "Open File Browser" },
            { "<leader>fp",  "<cmd>Telescope project<CR>",                                    desc = "Show Projects" },

            { "<leader>s",   group = "search" },
            { "<leader>sh",  "<cmd>Telescope help_tags<CR>",                                  desc = "Find Help" },
            { "<leader>sm",  "<cmd>Telescope man_pages<CR>",                                  desc = "Manual Pages" },
            { "<leader>sk",  "<cmd>Telescope keymaps<CR>",                                    desc = "Keymaps" },
            { "<leader>sc",  "<cmd>Telescope commands<CR>",                                   desc = "Commands" },

            { "<leader>b",   group = "buffer" },
            { "<leader>bb",  "<cmd>Telescope buffers<CR>",                                    desc = "Show Buffers" },
            { "<leader>bn",  "<cmd>tabnext<CR>",                                              desc = "Next Buffer" },
            { "<leader>bp",  "<cmd>tabprevious<CR>",                                          desc = "Previous Buffer" },

            { "<leader>c",   group = "configuration" },
            { "<leader>cc",  "<cmd>e ~/.config/nvim<CR>",                                     desc = "Open Configuration" },
            { "<leader>cp",  "<cmd>e ~/.config/nvim/lua/thorolas/plugins<CR>",                desc = "Open Plugins Configuration" },
            { "<leader>cs",  "<cmd>e ~/.config/nvim/lua/thorolas/snippets<CR>",               desc = "Open Snippets Configuration" },
            { "<leader>cl",  "<cmd>Lazy<CR>",                                                 desc = "Plugin Manager" },

            { "<leader>g",   group = "lsp" },
            { "<leader>gh",  "<cmd>lua vim.lsp.buf.hover()<CR>",                              desc = "LSP Hover" },
            { "<leader>gd",  "<cmd>lua vim.diagnostic.open_float()<CR>",                      desc = "Show Diagnostics" },
            { "<leader>gc",  "<cmd>lua vim.lsp.buf.rename()<CR>",                             desc = "Rename" },
            { "<leader>gf",  "<cmd>lua vim.lsp.buf.format({async = true})<CR>",               desc = "Format Document" },
            { "<leader>ga",  "<cmd>lua vim.lsp.buf.code_action()<CR>",                        desc = "Code Action" },

            { "<leader>r",   group = "runners" },

            { "<leader>rt",  group = "typst" },
            { "<leader>rtt", "<cmd>TypstWatch<CR>",                                           desc = "Start Typst Watch" },
            { "<leader>rtp", "<cmd>TypstPreview<CR>",                                         desc = "Start Typst Preview" },
            { "<leader>rtu", "<cmd>TypstPreviewUpdate<CR>",                                   desc = "Refresh Typst Preview" },
            { "<leader>rts", "<cmd>TypstPreviewStop<CR>",                                     desc = "Stop Typst Preview" },

            { "<leader>rr",  group = "coderunner" },
            { "<leader>rrr", "<cmd>RunCode<CR>",                                              desc = "Run The Current File" },

            { "<leader>rp",  group = "processing" },
            { "<leader>rpr", "<cmd>ProcessingRun<CR>",                                        desc = "Run Processing File" },
            { "<leader>rpp", "<cmd>ProdessingPresent<CR>",                                    desc = "Run Processing Present Mode" },
            { "<leader>rpe", "<cmd>ProcessingExport<CR>",                                     desc = "Export Processing Executable" },

            { "<leader>re",  group = "exercism" },
            { "<leader>ret", "<cmd>!exercism test<CR>",                                       desc = "Run Exercism Test" },
            { "<leader>res", "<cmd>!exercism submit<CR>",                                     desc = "Submit To Exercism" },
        };

        local setup = {
            plugins = {
                marks = true,
                registers = true,
                spelling = {
                    enabled = true,
                    suggestions = 10,
                },
                presets = {
                    operators = false,
                    motions = true,
                    text_objects = true,
                    windows = true,
                    nav = true,
                    z = true,
                    g = true,
                },
            },
            icons = {
                breadcrumb = "»",
                separator = "➜",
                group = "+",
            },
            layout = {
                height = { min = 4, max = 25 },
                width = { min = 20, max = 50 },
                spacing = 3,
                align = "left",
            },
            show_help = true,
        };

        local whichkey = require('which-key');
        whichkey.setup(setup)
        whichkey.add(mappings)
    end
}
