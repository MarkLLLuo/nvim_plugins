return {
        "MysticalDevil/inlay-hints.nvim",
        event = "LspAttach",
        dependencies = { "neovim/nvim-lspconfig" }, -- optional
        config = function()
                require("inlay-hints").setup()

                vim.keymap.set("n", "<leader>i", function()
                        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
                        vim.notify(vim.lsp.inlay_hint.is_enabled() and "Inlay Hints Enabled" or "Inlay Hints Disabled")
                end, { desc = "inlay hints" })
        end,
}
