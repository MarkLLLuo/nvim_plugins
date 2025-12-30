if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
        "mg979/vim-visual-multi",
        branch = "master",
        init = function()
                vim.g.VM_maps = {
                        ["Find Under"] = "<C-n>",
                }
        end,
}
