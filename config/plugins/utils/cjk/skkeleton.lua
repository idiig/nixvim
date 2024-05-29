return { -- SKK
  "vim-skk/skkeleton",
  lazy = false,
  keys = {
    { "<C-j>", mode = "i" },
  },
  dependencies = {
    "vim-denops/denops.vim",
    --""rinx/cmp-skkeleton",
    "uga-rosa/cmp-skkeleton",
    "Shougo/ddc.vim",
    --    "delphinus/skkeleton_indicator",
    --"Shougo/pum.vim",
  },
  config = function()
    -- imap <C-j> <Plug>(skkeleton-toggle)
    -- cmap <C-j> <Plug>(skkeleton-toggle)
    vim.api.nvim_set_keymap("i", "<C-j>", "<Plug>(skkeleton-toggle)", { noremap = true })
    vim.api.nvim_set_keymap("c", "<C-j>", "<Plug>(skkeleton-toggle)", { noremap = true })
    -- 以下と同等のLUAコード
    -- call skkeleton#config({ 'globalJisyo': '~/.skk/SKK-JISYO.L' })
    vim.api.nvim_exec(
      [[
      call skkeleton#config({
        \ 'globalDictionaries': ["~/.skkeleton/SKK-JISYO.L"],
        \ 'userDictionary': expand('~/.skkeleton/SKK-JISYO.user'),
        \  'eggLikeNewline': v:true,
        \ })
    ]],
      false
    )

    vim.api.nvim_exec(
      [[
      call skkeleton#register_kanatable('rom',{
       \ 'hh': ['お', 'h'],
       \ 'jk': 'escape',
       \ 'z,': ['―'],
       \ "z\<Space>": ["\u3000"],
       \ })
    ]],
      false
    )

    vim.api.nvim_exec(
      [[
      call ddc#custom#patch_global('sources', ['skkeleton'])
      ]],
      false
    )

    vim.api.nvim_exec(
      [[
        call ddc#custom#patch_global('sourceOptions', {
    \   '_': {
    \     'matchers': ['matcher_head'],
    \     'sorters': ['sorter_rank']
    \   },
    \   'skkeleton': {
    \     'mark': 'skkeleton',
    \     'matchers': ['skkeleton'],
    \     'sorters': [],
    \     'minAutoCompleteLength': 2,
    \   },
    \ })
      ]],
      false
    )

    vim.api.nvim_exec(
      [[
        call ddc#enable()
      ]],
      false
    )
  end,
}
