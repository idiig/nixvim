{
  pkgs,
  lib,
  ...
}: let
  plenaryRepo = {
    owner = "nvim-lua";
    repo = "plenary.nvim";
    rev = "a3e3bc82a3f95c5ed0d7201546d5d2c19b20d683";
    hash = "sha256-5Jf2mWFVDofXBcXLbMa417mqlEPWLA+cQIZH/vNEV1g="
}
in {

  extraPlugins = with pkgs.vimUtils; [

    # coplilot
    (buildVimPlugin {
      pname = "plenary";
      version = "v0.1.4-1";
      src = pkgs.fetchFromGitHub copilotChatRepo;
      meta = {
        description = "All the lua functions I don't want to write twice. full; complete; entire; absolute; unqualified.";
        homepage = "https://github.com/nvim-lua/plenary.lua";
        license = lib.licenses.mit;
      };
    })
  ];

  extraConfigLua = ''
    require('plenary').setup { }
  '';
}
