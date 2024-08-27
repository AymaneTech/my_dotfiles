return {
  "github/copilot.vim",
  config = function()
    vim.g.copilot_no_tab_map = true
    -- Map Shift+Tab to accept Copilot suggestions
    vim.api.nvim_set_keymap("i", "<S-Tab>", 'copilot#Accept()', { silent = true, expr = true })
  end,
}

