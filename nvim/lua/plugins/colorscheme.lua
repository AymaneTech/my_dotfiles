return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}

-- it was a good one
--
-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		-- Make sure to set the color scheme when neovim loads and configures the dracula plugin
-- 		vim.cmd.colorscheme("rose-pine")
-- 	end,
-- }

-- return {
--     -- "catppuccin/nvim",
--     -- "folke/tokyonight.nvim",
-- }
