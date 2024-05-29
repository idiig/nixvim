
{
  pkgs,
  lib,
  ...
}: let
  imSelectRepo = {
    owner = "keaising";
    repo = "im-select.nvim";
    rev = "ca1aebb8f5c8a0342ae99a0fcc8ebc49b5f2201e";
    hash = "sha256-tyVGbfRoshuuUWkFlQa6YvoJJ4HMLmG5p8Y0EsP1Zig=";
  };

in {

  extraPlugins = with pkgs.vimUtils; [

    # coplilot
    (buildVimPlugin {
      pname = "im-select";
      version = "2024-05-29";
      src = pkgs.fetchFromGitHub imSelectRepo;
      meta = {
        description = "Switch Input Method automatically depends on NeoVim's edit mode.";
        homepage = "https://github.com/keaising/im-select.nvim";
        license = lib.licenses.mit;
      };
    })
  ];

  extraConfigLua = ''
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
    require("CopilotChat").setup { }
  '';
}
