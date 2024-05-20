return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    -- "autotools_ls",
                    -- "clangd",
                    "gopls",
                    "lua_ls",
                    "pyright",
                    "tailwindcss",
                    "tsserver",
                    -- "zls",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            lspconfig.autotools_ls.setup({ capabilities = capabilities })
            lspconfig.clangd.setup({
                capabilities = capabilities,
                -- https://github.com/jose-elias-alvarez/null-ls.nvim/issues/428
                cmd = { "clangd", "--offset-encoding=utf-16" }
            })
            -- lspconfig.clang_format.setup({ capabilities = capabilities })
            lspconfig.gopls.setup({
                -- capabilities = capabilities,
                capabilities = capabilities,
                settings = {
                    gopls = {
                        completeUnimported = true,
                        analyses = { unusedparams = true },
                    },
                },
            })
            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.pyright.setup({ capabilities = capabilities })
            lspconfig.tailwindcss.setup({ capabilities = capabilities })
            lspconfig.tsserver.setup({ capabilities = capabilities })
            lspconfig.zls.setup({ capabilities = capabilities })

            vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', '<space>r', vim.lsp.buf.rename, {})
            vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {})
        end
    },
}
