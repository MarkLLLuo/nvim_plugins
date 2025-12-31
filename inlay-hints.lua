return {
        "MysticalDevil/inlay-hints.nvim",
        event = "LspAttach",
        dependencies = { "neovim/nvim-lspconfig" }, -- optional
        config = function()
                require("inlay-hints").setup {
                        commands = { enable = true }, -- Enable commands: InlayHintsToggle, InlayHintsEnable, InlayHintsDisable
                        autocmd = { enable = false }, -- Auto-enable inlay hints on LspAttach
                }

                vim.keymap.set("n", "<leader>i", function()
                        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
                        vim.notify(vim.lsp.inlay_hint.is_enabled() and "Inlay Hints Enabled" or "Inlay Hints Disabled")
                end, { desc = "Toggle inlay hints" })
        end,
}
