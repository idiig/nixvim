{
  pkgs,
  lib,
  ...
}: let

  kensakuRepo = {
    owner = "Allianaab2m";
    repo = "telescope-kensaku.nvim";
    rev = "4605ba9149fa276e55f08b77acc7473233b7a063";
    hash = "sha256-XE1wPqMhQzcWVUDbyNz75DRE/aqUBZ0ra5RjJHdZFRg=";
  };

in {

  extraPlugins = with pkgs.vimUtils; [

    # telescopeKensaku
    (buildVimPlugin {
      pname = "telescope-kensaku.nvim";
      version = "2.4.0";
      src = pkgs.fetchFromGitHub telescopeKensakuRepo;
      meta = {
        description = "kensaku.vimを利用して全文検索を行うTelescope extensionです。";
        homepage = "https://github.com/Allianaab2m/telescope-kensaku.nvim";
      };
    })
  ];

  extraConfigLua = ''
    require("telescope").load_extension("kensaku") -- :Telescope kensaku
  '';
}
