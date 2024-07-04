local opt = vim.opt

-- Set tab width
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false -- Use tabs instead of spaces
opt.autoindent = true
opt.smartindent = true

-- Automatically remove trailing whitespace on save
vim.api.nvim_exec(
  [[
  autocmd BufWritePre * %s/\s\+$//e
]],
  false
)
local null_ls = require "null-ls"

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.clang_format.with {
      filetypes = { "c" },
      extra_args = { "-style=file" },
    },
  },
}
