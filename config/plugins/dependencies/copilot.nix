# :Copilot authn to access github copilot account

{
  pkgs,
  lib,
  ...
}: let

  copilotRepo = {
    owner = "zbirenbaum";
    repo = "copilot.lua";
    rev = "f7612f5af4a7d7615babf43ab1e67a2d790c13a6";
    hash = "sha256-JX3sdsnOnjkY7r9fCtC2oauo0PXF3SQ+SHUo8ifBvAc=";
    # rev = "03f825956ec49e550d07875d867ea6e7c4dc8c00";
    # hash = "sha256-H8dwtkk5ADagpIXfZ2rL8Giy77cC6daWoSgntO9eh0c=";
  };

in {

  extraPlugins = with pkgs.vimUtils; [

    # coplilot
    (buildVimPlugin {
      pname = "copilot";
      version = "2024-05-28";
      src = pkgs.fetchFromGitHub copilotRepo;
      meta = {
        description = "This plugin is the pure lua replacement for github/copilot.vim.";
        homepage = "https://github.com/zbirenbaum/copilot.lua";
        license = lib.licenses.mit;
      };
    })
  ];

  extraConfigLua = ''
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  '';
}
