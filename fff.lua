return {
        "dmtrKovalenko/fff.nvim",
        build = function()
                -- downloads a prebuilt binary or falls back to cargo build
                require("fff.download").download_or_build_binary()
        end,
        -- for nixos:
        -- build = "nix run .#release",
        opts = {
                debug = {
                        enabled = true,
                        show_scores = true,
                },
        },
        lazy = false, -- the plugin lazy-initialises itself
        keys = {
                { "-f", function() require("fff").find_files() end, desc = "FFFind files" },
                { "-g", function() require("fff").live_grep() end, desc = "LiFFFe grep" },
                {
                        "-z",
                        function() require("fff").live_grep { grep = { modes = { "fuzzy", "plain" } } } end,
                        desc = "Live fffuzy grep",
                },
                {
                        "-w",
                        function() require("fff").live_grep_under_cursor() end,
                        mode = { "n", "x" },
                        desc = "Search current word / selection",
                },
        },
}
