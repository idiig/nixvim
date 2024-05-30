# TODO: Is there a way to integrate system tools into the standalone nixvim?

{
  imports = [

    # TODO write dependency in a way like lazyvim
    ./dependencies/plenary.nix
    ./dependencies/copilot.nix
    ./dependencies/denops.nix

    # UI
    ./ui/colorschemes.nix  # colorschemes
    ./ui/btw.nix  # clean banner
    ./ui/bufferline.nix  # show buffer on the top
    ./ui/lspkind.nix  # popup icons
    ./ui/lualine.nix  # status line
    # ./ui/lightline.nix
    # TODO
    # ./ui/lualine.lua
    # ./ui/gitsigns.lua
    # ./ui/colorizer.lua

    # utils
    ./utils/which-key.nix  # show keybindings TODO: switch to hydra
    # https://github.com/anuvyklack/hydra.nvim/wiki/Telescope
    # https://nix-community.github.io/nixvim/plugins/hydra/hydras/index.html
    ./utils/undotree.nix  # undo history manage
    ./utils/copilotChat.nix  # AI assistant
    ./utils/nvim-surround.nix  # Edit surround of selection
    ./utils/fuzzy-motion.nix  # jump to fuzzy match word
    ./utils/indent-blankline.nix  # This plugin adds indentation guides to Neovim
    # TODO
    # ./utils/auto-session.lua

    # Auto completion
    ./completion/cmp.nix
    ./completion/cmp-emoji.nix
    ./completion/copilot-cmp.nix
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
    # TODO
    # ./cjk/kensaku.lua

    # Programming
    ./prog/conform.nix  # formatting

    # Writting
  ];
}
