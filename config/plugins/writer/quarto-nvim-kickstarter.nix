{
  pkgs,
  lib,
  ...
}: let

  quartoNvimKickstarterRepo = {
    owner = "jmbuhr";
    repo = "quarto-nvim-kickstarter";
    rev = "f6d8afe1f15de276c771d3f3b8c0032e0aeab881";
    hash = "sha256-Sj3UYc5fyEjTAO8XRpoWa/0tJ7KgPUN7iPCkw9ys7ds=";
  };

in {

  extraPlugins = with pkgs.vimUtils; [

    (buildVimPlugin {
      pname = "quarto-nvim-kickstarter";
      version = "3.9.0";
      src = pkgs.fetchFromGitHub quartoNvimKickStarterRepo;
      meta = {
        description = "Companion to https://github.com/quarto-dev/quarto-nvim";
        homepage = "https://github.com/jmbuhr/quarto-nvim-kickstarter";
      };
    })
  ];

}
