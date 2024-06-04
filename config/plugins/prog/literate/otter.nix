# Otter.nvim provides lsp features and a code completion source for code embedded in other documents
{
  pkgs,
  lib,
  ...
}: let
  otterRepo = {
    owner = "jmbuhr";
    repo = "otter.nvim";
    rev = "083407ae9405b414ac4828e19f9b1e9f0e1ac102";
    hash = "sha256-C0ByoF9r44SYo1uB0WCQWI5j4dRSgc3sS5oPoyDKR/g=";
  };
in {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "otter.vim";
      version = "2024-06-01";
      src = pkgs.fetchFromGitHub otterRepo;
      meta = {
        description = "Otter.nvim provides lsp features and a code completion source for code embedded in other documents";
        homepage = "https://github.com/jmbuhr/otter.nvim";
        license = lib.licenses.mit;
      };
    })
  ];
}
