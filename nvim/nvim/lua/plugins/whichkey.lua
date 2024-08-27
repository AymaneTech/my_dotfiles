return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
        plugins = {
            marks = true,
            registers = true,
            spelling = {
                enabled = true,
                suggestions = 20,
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
    },
    config = function(_, opts)
        local wk = require("which-key")
        wk.setup(opts)
        wk.register({
            ["<leader>/"] = { name = "Comments", _ = "which_key_ignore" },
            ["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
            ["<leader>d"] = { name = "[D]ebug", _ = "which_key_ignore" },
            ["<leader>e"] = { name = "[E]xplorer", _ = "which_key_ignore" },
            ["<leader>f"] = { name = "[F]ind", _ = "which_key_ignore" },
            ["<leader>g"] = { name = "[G]it", _ = "which_key_ignore" },
            ["<leader>J"] = { name = "[J]ava", _ = "which_key_ignore" },
            ["<leader>t"] = { name = "[T]ab", _ = "which_key_ignore" },
            ["<leader>w"] = { name = "[W]indow", _ = "which_key_ignore" }
        })
    end,
}
