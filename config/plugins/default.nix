{
  imports = [

    ./dependencies/plenary.nix
    ./dependencies/copilot.nix

    ./ui/colorschemes.nix
    ./ui/btw.nix
    ./ui/bufferline.nix
    ./ui/lspkind.nix

    ./utils/which-key.nix
    ./utils/completion/init.nix
    ./utils/cjk/im-select.nix
    ./utils/undotree.nix
    ./utils/copilotChat.nix

    ./prog/formatter.nix
  ];
}
