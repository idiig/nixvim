return {
  "kaarmu/typst.vim",
  ft = "typst",
  lazy = false,
  config = function()
    vim.api.nvim_set_keymap("n", "<Space>ty", "<cmd>TypstWatch<CR><CR>", { noremap = true })
    vim.g.typst_pdf_viewer = "zathura"
  end,
}
