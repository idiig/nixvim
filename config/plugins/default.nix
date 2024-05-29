{
  imports = [

    ./dependencies/plenary.nix
    ./dependencies/copilot.nix

    # UI
    ./ui/colorschemes.nix  # colorschemes
    ./ui/btw.nix  # clean banner
    ./ui/bufferline.nix  # show buffer on the top
    ./ui/lspkind.nix  # popup icons
    # TODO
    # ./ui/lualine.lua
    # ./ui/gitsigns.lua
    # ./ui/colorizer.lua

    # utils
    ./utils/which-key.nix  # show keybindings
    ./utils/undotree.nix  # undo history manage
    ./utils/copilotChat.nix  # AI assistant
    ./utils/nvim-surround.nix  # Edit surround of selection
    # TODO
    # ./utils/auto-session.lua

    # Auto completion
    ./completion/cmp.nix
    ./completion/nvim-autopairs.nix
    ./completion/cmp-emoji.nix
    ./completion/copilot-cmp.nix
    ./completion/snippets/friendly-snippets.nix
    ./completion/snippets/luasnip.nix

    # Filesystem
    # ./filesystem/telescope.lua
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
