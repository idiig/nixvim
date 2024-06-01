# TODO: Is there a way to integrate system tools into the standalone nixvim?

{
  imports = [

    # TODO write dependency in a way like lazyvim
    ./dependencies/plenary.nix
    ./dependencies/denops.nix
    ./dependencies/copilot.nix

    # UI
    ./ui/colorschemes.nix  # colorschemes
    ./ui/btw.nix  # clean banner
    ./ui/bufferline.nix  # show buffer on the top
    ./ui/lspkind.nix  # popup icons
    ./ui/indent-blankline.nix  # This plugin adds indentation guides to Neovim
    ./ui/lualine.nix  # status line
    ./ui/rainbow-delimiters.nix  # delimiters
    ./ui/image.nix  # render images
    # ./ui/lightline.nix
    # TODO
    # ./ui/gitsigns.lua
    # ./ui/colorizer.lua

    # utils
    ./utils/which-key.nix  # show keybindings TODO: switch to hydra
    # https://github.com/anuvyklack/hydra.nvim/wiki/Telescope
    # https://nix-community.github.io/nixvim/plugins/hydra/hydras/index.html
    ./utils/undotree.nix  # undo history manage
    ./utils/copilotChat.nix  # AI assistant
    ./utils/nvim-surround.nix  # Edit surround of selection
    ./utils/fuzzy-motion.nix  # Emacs Ace jump
    ./utils/wilder.nix  # wilder buffer
    # TODO
    # ./utils/auto-session.lua
    # git

    # Auto completion
    ./completion/cmp.nix
    ./completion/snippets/luasnip.nix
    ./completion/snippets/friendly-snippets.nix
    ./completion/nvim-autopairs.nix

    # Pickers
    ./pickers/telescope.nix
    ./pickers/keymaps/file-picker.nix
    ./pickers/keymaps/buffer-picker.nix
    ./pickers/keymaps/meta-picker.nix
    ./pickers/keymaps/string-picker.nix  # aka search file/buffer/workspace
    ./pickers/keymaps/command-picker.nix # emacs M-x
    ./pickers/keymaps/jumplist-picker.nix
    # TODO
    # ./pickers/keymaps/git-picker.nix
    # ./pickers/keymaps/lsp-picker.nix

    # Filesystem
    # ./filesystem/dired.nix

    # CJK languages
    ./cjk/im-select.nix  # auto select input method when switch mode
    # Japanese search
    ./cjk/kensaku/dependency/kensaku.nix  # kensaku core
    ./cjk/kensaku/kensaku-search.nix  # use / or ? with kensaku
    ./cjk/kensaku/telescope-kensaku.nix  # use telescope with kensaku
    # TODO Skkeleton

    # Develop
    ./prog/conform.nix  # formatting
    # LSP
    ./prog/lsp/lsp.nix
    # TODO: none-ls -> null-ls
    ./prog/lsp/none-ls.nix  # diagnostics, code actions, and more
    ./prog/treesitter/nvim-treesitter.nix  # scope for highlight
    # TODO Fidget: Extensible UI for Neovim notifications and LSP progress messages.
    # TODO linting

    # Writting
    ./writer/quarto-nvim.nix
    # TODO
    # markdown
    # tex
    # typst
    # quarto
    # txt
  ];
}
