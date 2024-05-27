-- quickrun.lua
return {
  'thinca/vim-quickrun',
  dependencies = { 'lambdalisue/vim-quickrun-neovim-job' },
  setup = function()
    vim.g.quickrun_config = {
      ['_'] = {
        --    ["outputter/buffer/opener"] = "new",
        --    ['outputter/buffer/into'] = 1,
        --    ['outputter/buffer/close_on_empty'] = 1,
        ['runner'] = "neovim_job",
        -- ['runner'] = 'vimproc',
        -- ['runner/vimproc/updatetime'] = 40,
        ['runner/updatetime'] = 40,
        ['outputter'] = 'error',
        ['outputter/error/success'] = 'quickfix',
        ['outputter/error/error'] = 'quickfix',
        ['outputter/buffer/split'] = ":rightbelow",
      },
      ['rust'] = {
        ["exec"] = "cargo run",
      },
    }

    vim.keymap.set("n", "<leader>r", "<Nop>")
    vim.keymap.set("n", "<leader>rr", ":QuickRun<CR>", { silent = true })
  end,
}
