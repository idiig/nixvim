# TODO: Is there a way to integrate system tools into the standalone nixvim?
{
  imports = [
    # TODO write dependency in a way like lazyvim
    ./dependencies/plenary.nix
    ./dependencies/denops.nix
    ./dependencies/copilot.nix

    # UI
    ./ui/colorschemes.nix # colorschemes
    ./ui/btw.nix # clean banner
    ./ui/bufferline.nix # show buffer on the top
    ./ui/lspkind.nix # popup icons
    ./ui/indent-blankline.nix # This plugin adds indentation guides to Neovim
    ./ui/lualine.nix # status line
    ./ui/rainbow-delimiters.nix # delimiters
    ./ui/image.nix # render images
    # ./ui/lightline.nix
    # TODO
    # ./ui/gitsigns.lua
    # ./ui/colorizer.lua

    # utils
    ./utils/which-key.nix # show keybindings
    # TODO: switch to hydra
    # https://github.com/anuvyklack/hydra.nvim/wiki/Telescope
    # https://nix-community.github.io/nixvim/plugins/hydra/hydras/index.html
    ./utils/undotree.nix # undo history manage
    ./utils/copilotChat.nix # AI assistant
    ./utils/nvim-surround.nix # Edit surround of selection
    ./utils/fuzzy-motion.nix # Emacs Ace jump
    ./utils/wilder.nix # wilder buffer
    ./utils/neogit.nix # git TODO: keybindings
    # TODO
    # ./utils/auto-session.lua

    # Auto completion
    ./completion/snippets/friendly-snippets.nix
    ./completion/snippets/luasnip.nix
    ./completion/extra-sources/cmp-skkeleton.nix
    ./completion/cmp.nix
    ./completion/nvim-autopairs.nix

    # Pickers
    ./pickers/telescope.nix
    # TODO: These should be managed by hydra
    ./pickers/keymaps/file-picker.nix
    ./pickers/keymaps/buffer-picker.nix
    ./pickers/keymaps/meta-picker.nix
    ./pickers/keymaps/string-picker.nix # aka search file/buffer/workspace
    ./pickers/keymaps/command-picker.nix # emacs M-x
    ./pickers/keymaps/jumplist-picker.nix
    # TODO
    # ./pickers/keymaps/git-picker.nix
    # ./pickers/keymaps/lsp-picker.nix

    # Filesystem
    # TODO
    # ./filesystem/dired.nix
    ./filesystem/oil.nix # # TODO: These could be replaced by mini.nvim
    # ./filesystem/harpoo.nix  # consider use harpoon

    # CJK languages
    ./cjk/im-select.nix # auto select input method when switch mode
    # Japanese search
    ./cjk/kensaku/dependency/kensaku.nix # kensaku core
    ./cjk/kensaku/kensaku-search.nix # use / or ? with kensaku
    ./cjk/skkeleton.nix # skk in vim
    # FIXME: telescope-kensaku
    # ./cjk/kensaku/telescope-kensaku.nix  # use telescope with kensaku
    # TODO: Chinese config

    # Develop
    ./prog/conform.nix # formatting
    # LSP
    ./prog/lsp/lsp.nix
    # TODO: none-ls -> null-ls
    ./prog/lsp/none-ls.nix # diagnostics, code actions, and more
    ./prog/treesitter/nvim-treesitter.nix # scope for highlight
    ./prog/treesitter/nvim-treesitter-context.nix # scope for highlight
    # TODO otter
    ./prog/literate/otter.nix # otter
    ./prog/literate/vim-slime.nix
    # TODO Fidget: Extensible UI for Neovim notifications and LSP progress messages.
    # TODO linting

    # Writting
    ./writer/quarto-nvim.nix
    # ./writer/slime.nix
    # TODO: Outter (Use code env when integrating in other env, e.g. markdown)
    # TODO: single q to quit telescope
    # # FIXME: :q may freeze
    # TODO
    # markdown
    # tex
    # typst
    # quarto
    # txt
  ];

  # # TODO: Add per-filetype configuration
  # https://github.com/nix-community/nixvim/pull/246
  # files."ftdetect/myft.lua".autoCmd = [
  #   {
  #     event = ["BufRead" "BufNewFile"];
  #     pattern = ["*.myft"];
  #     command = "set ft=myft";
  #   }
  # ];
}
