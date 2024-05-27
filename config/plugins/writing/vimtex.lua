return {
  "lervag/vimtex",
  config = function()
    --    vim.api.nvim_set_keymap("n", "<Space>vc", ":VimtexCompile", { noremap = true })
    vim.api.nvim_set_keymap("n", "<Space>vv", "<cmd>VimtexView<CR>", { noremap = true })
    vim.api.nvim_set_keymap("n", "<Space>vc", "<cmd>VimtexCompile<CR>", { noremap = true })
    vim.g.vimtex_view_general_viewer = "zathura"
  end,
}
