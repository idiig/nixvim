{pkgs, ...}: let
  quartoNvimRepo = {
    owner = "quarto-dev";
    repo = "quarto-nvim";
    rev = "67e09027b5d8bd948907734fc6fb15028ffdcd28";
    hash = "sha256-JRRwiY69GSIUSPslvVDL5VRZdtnYeZ2smyAw2ysu5B4=";
  };
in {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "quarto-nvim";
      version = "0.18.2";
      src = pkgs.fetchFromGitHub quartoNvimRepo;
      meta = {
        description = "";
        homepage = "";
      };
    })
  ];
}
