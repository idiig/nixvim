return {
  "lambdalisue/kensaku-search.vim",
  lazy = false, --/キーでの検索でkensaku.vimを使うためのプラグイン。

  dependencies = {
    "vim-denops/denops.vim",
    "lambdalisue/kensaku.vim",
    "yuki-yano/fuzzy-motion.vim",
    lazy = false,
  },

  config = function()
    local keymap = vim.keymap -- for conciseness
    keymap.set("c", "<CR>", "<Plug>(kensaku-search-replace)<CR>", { noremap = true })
    keymap.set("n", "S", "<cmd>FuzzyMotion<CR>", { noremap = true })
    vim.cmd("let g:fuzzy_motion_matchers = ['kensaku', 'fzf']")
  end,
}
