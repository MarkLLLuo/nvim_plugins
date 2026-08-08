-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
        -- Define the plugin using lazy.nvim format
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
                -- Plugin setup according to catppuccin documentation
                require("catppuccin").setup {
                        flavour = "frappe", -- Options: "latte", "frappe", "macchiato", "mocha"
                        background = {
                                light = "latte",
                                dark = "macchiato",
                        },
                }
                -- Set the colorscheme
                vim.cmd "colorscheme catppuccin"
        end,
}
