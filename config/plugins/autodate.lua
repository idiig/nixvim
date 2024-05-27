return {
  "vim-scripts/autodate.vim",
  lazy = false,
  config = function()
    vim.g.autodate_format = "%Y/%m/%d-%H:%M:%S"
    --    vim.g.autodate_keyword_pre = "<!-- DATE: "
    --    vim.g.autodate_keyword_post = " -->"
  end,
}
