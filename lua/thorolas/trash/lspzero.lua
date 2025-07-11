return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v4.x',
    dependencies = {
        -- LSP Support
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',

        -- Autocompletion
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',

        -- Snippets
        'L3MON4D3/LuaSnip',
        'rafamadriz/friendly-snippets'
    },

    priority = 1000,
    config = function()
        local lspz = require('lsp-zero')

        lspz.extend_lspconfig({
            sign_text = true,
            capabilities = require('cmp_nvim_lsp').default_capabilities(),
            on_init = function(client) lspz.nvim_lua_settings(client, {}) end,
        })

        require('mason').setup({})
        require('mason-lspconfig').setup({
            handlers = {
                function(server_name)
                    if server_name == "hls" then
                        require('lspconfig')[server_name].setup({
                            settings = {
                                haskell = {
                                    formattingProvider = "ormolu",
                                }
                            }
                        })
                    else
                        require('lspconfig')[server_name].setup({})
                    end
                end,
            },
        })

        local cmp = require('cmp')
        local cmpaction = require('lsp-zero').cmp_action()

        cmp.setup({
            sources = {
                { name = 'nvim_lsp' },
                { name = 'luasnip' }
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-J>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
                ['<C-K>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),

                ['<CR>'] = cmp.mapping.confirm({ select = false }),
                ['<C-Space>'] = cmp.mapping.complete(),

                ['<C-L>'] = cmpaction.luasnip_jump_forward(),
                ['<C-H>'] = cmpaction.luasnip_jump_backward(),

                ['<C-U>'] = cmp.mapping.scroll_docs(-4),
                ['<C-B>'] = cmp.mapping.scroll_docs(4)
            }),
            snippet = {
                expand = function(args)
                    local luasnip = require("luasnip")
                    if not luasnip then
                        return
                    end
                    luasnip.lsp_expand(args.body)
                end
            }
        })

        local luasnip = require('luasnip')
        require("luasnip/loaders/from_vscode").lazy_load()
        luasnip.config.set_config({ enable_autosnippets = true, store_selection_keys = '<Tab>' })
        vim.keymap.set('i', '<C-S>', function() luasnip.expand() end, { silent = true })
        vim.keymap.set({ 'i', 's' }, '<A-J>', function() luasnip.jump(1) end, { silent = true })
        vim.keymap.set({ "i", "s" }, "<C-E>", function()
            if luasnip.choice_active() then
                luasnip.change_choice(1)
            end
        end, { silent = true })

        require("luasnip.loaders.from_lua").lazy_load({ paths = { "~/.config/nvim/lua/thorolas/snippets" } })

        local lspconfig = require("lspconfig")

        lspconfig.gleam.setup({
            cmd = { "gleam", "lsp" },
            filetypes = { "gleam" },
            root_dir = require("lspconfig.util").root_pattern("gleam.toml"),
        })


        lspconfig.fsautocomplete.setup({
            cmd = { "fsautocomplete" },
            filetypes = { "fsharp" },
            root_dir = require("lspconfig.util").root_pattern("*.fsproj", ".git"),
        })

        lspz.setup()
    end
}
