return {
  "yukimemi/dps-autodate",
  lazy = false,
  dependencies = {
    "vim-denops/denops.vim",
  },
}

-- return {
--   lazy = false,
--   config = function()
--     vim.cmd([[let b:autodate_format="%Y/%m/%d-%H:%M:%S"]])
--     vim.cmd([[let b:autodate_keyword_pre = '<!--DATE-->']])
--     vim.cmd([[let b:autodate_keyword_post = '<!--DATE-->']])
--   end,
-- }
