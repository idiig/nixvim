return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    --    "vim-denops/denops.vim",
    --    "lambdalisue/kensaku.vim",
    --    "lambdalisue/kensaku-search.vim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    --   {
    --    "Allianaab2m/telescope-kensaku.nvim",
    --   config = function()
    --    require("telescope").load_extension("kensaku") -- :Telescope kensaku
    -- end,
    -- },
    { "vim-denops/denops.vim", lazy = false }, --kensaku.vimの依存プラグイン。
    { "lambdalisue/kensaku-search.vim", lazy = false }, --/キーでの検索でkensaku.vimを使うためのプラグイン。
    { "lambdalisue/kensaku.vim", lazy = false },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
  end,
}
