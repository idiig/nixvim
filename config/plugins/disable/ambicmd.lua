return {
  "thinca/vim-ambicmd",
  setup = function()
    vim.keymap.set("c", "<space>", [[ambicmd#expand("\<Space>")]], { expr = true })
    vim.keymap.set("c", "<CR>", [[ambicmd#expand("\<CR>")]], { expr = true })
  end,
}
