{
  imports = [

    ./dependencies/plenary.nix
    ./dependencies/copilot.nix

    ./ui/colorschemes.nix
    ./ui/btw.nix
    ./ui/bufferline.nix
    ./ui/lspkind.nix

    ./utils/which-key.nix
    ./utils/undotree.nix
    ./utils/copilotChat.nix
    ./utils/completion/cmp.nix

    ./prog/formatter.nix
  ];
}
