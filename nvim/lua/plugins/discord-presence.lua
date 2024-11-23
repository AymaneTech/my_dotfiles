return {
	"vyfor/cord.nvim",
	build = "./build || .\\build",
	event = "VeryLazy",
	run = "./build || .\\build",
	config = function()
		require("cord").setup()
	end,
	opts = {},
}
