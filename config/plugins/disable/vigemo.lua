return {
  "osyo-manga/vim-vigemo",
  --  lazy = true,
  --  keys = {
  --    { "/", mode = "c" },
  --  },
  dependencies = {
    "Shougo/vimproc.vim",
  },
  config = function()
    -- vim.keymap.set("n", "<leader>ss", "<Plug>(vigemo-search)<CR>")
    vim.keymap.set("n", "<leader>ss", ":VigemoSearch<CR>")
    vim.cmd([[ let g:unite#filters#matcher_vigemo#filtering_input_length = 3 ]])
  end,
}
