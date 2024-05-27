return { -- SKK
  "rinx/cmp-skkeleton",
  --  lazy = true,
  --  keys = {
  --    { "<C-j>", mode = "i" },
  --  },
  dependencies = {
    "hrsh7th/nvim-cmp",
    --"Shougo/ddc.vim",
    "vim-denops/denops.vim",
    --"Shougo/pum.vim",
    -- Install your UIs
    --"Shougo/ddc-ui-native",
    -- Install your sources
    --"Shougo/ddc-source-around",
    -- Install your filters
    --"Shougo/ddc-matcher_head",
    --"Shougo/ddc-sorter_rank",
    --"rbtnn/vim-ambiwidth",
    --"delphinus/skkeleton_indicator",
    --"Shougo/ddc-source-around",
    --"Shougo/ddc-source-nvim-lsp",
    --"hrsh7th/vim-vsnip-integ",
  },

  --  config = function()
  --    -- imap <C-j> <Plug>(skkeleton-toggle)
  --    -- cmap <C-j> <Plug>(skkeleton-toggle)
  --    vim.api.nvim_set_keymap("i", "<C-j>", "<Plug>(skkeleton-toggle)", { noremap = true })
  --    vim.api.nvim_set_keymap("c", "<C-j>", "<Plug>(skkeleton-toggle)", { noremap = true })
  --    -- 以下と同等のLUAコード
  --    -- call skkeleton#config({ 'globalJisyo': '~/.skk/SKK-JISYO.L' })
  --    vim.api.nvim_exec(
  --      [[
  --      call skkeleton#config({
  --        \ 'globalJisyo': expand('~/.skkeleton/SKK-JISYO.L'),
  --        \ 'userJisyo': expand('~/.skkeleton/SKK-JISYO.user'),
  --        \  'eggLikeNewline': v:true,
  --        \ })
  --    ]],
  --      false
  --    )
}
