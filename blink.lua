return { -- override blink.cmp plugin
        "Saghen/blink.cmp",
        version = "*",
        -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
        build = "cargo build --release",
        opts = {
                keymap = {
                        ["<CR>"] = { "select_and_accept", "fallback" },
                        ["<S-CR>"] = {},
                        -- ["<Tab>"] = { "snippet_forward", "fallback" },
                },
                -- See the fuzzy documentation for more information
                fuzzy = { implementation = "prefer_rust_with_warning" },
        },
}
