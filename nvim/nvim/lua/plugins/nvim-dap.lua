return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")
		-- Your dap configurations here, e.g.,
		dap.adapters.lldb = {
			type = "executable",
			command = "/usr/bin/lldb-vscode", -- adjust this for your debugger
			name = "lldb",
		}
		dap.configurations.cpp = {
			{
				name = "Launch file",
				type = "lldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
				args = {},
			},
		}
	end,
}
