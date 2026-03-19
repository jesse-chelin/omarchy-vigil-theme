return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                base00 = "#1B191B", -- Default background
                base01 = "#443B31", -- Lighter background (status bars)
                base02 = "#25211F", -- Selection background
                base03 = "#6D5E4B", -- Comments, invisibles
                base04 = "#D4C8B7", -- Dark foreground
                base05 = "#E5DAC9", -- Default foreground
                base06 = "#E5DAC9", -- Light foreground
                base07 = "#E3C49F", -- Light background

                base08 = "#89644C", -- Variables, errors, red
                base09 = "#A68D65", -- Integers, constants, orange
                base0A = "#C3A87C", -- Classes, types, yellow
                base0B = "#8A765C", -- Strings, green
                base0C = "#7A6F5E", -- Support, regex, cyan
                base0D = "#98866C", -- Functions, keywords, blue
                base0E = "#B7A68E", -- Keywords, storage, magenta
                base0F = "#82663E", -- Deprecated, brown
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
