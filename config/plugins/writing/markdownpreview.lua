return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  config = function()
    vim.api.nvim_set_keymap("n", "<Space>mm", "<cmd>MarkdownPreview<CR>", { noremap = true })
  end,
}
