return {
  "voldikss/vim-translator",
  --    "voldikss/vim-transle-me",

  config = function()
    -- " Replace the text with translation
    -- nmap <silent> <Leader>r <Plug>TranslateR
    -- vmap <silent> <Leader>r <Plug>TranslateRV
    vim.g.translator_target_lang = "en"
    vim.g.translator_source_lang = "auto"
    vim.api.nvim_set_keymap("n", "<leader>r", "<Plug>TranslateR<CR>", { noremap = true })
    vim.api.nvim_set_keymap("v", "<leader>r", "<Plug>TranslateRV<CR>", { noremap = true })

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
  end,
}
