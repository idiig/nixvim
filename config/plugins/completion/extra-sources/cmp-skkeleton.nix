# Require cmp and skkeleton
{
  pkgs,
  lib,
  ...
}: let

  cmpSkkeletonRepo = {
    owner = "uga-rosa";
    repo = "cmp-skkeleton";
    rev = "2c268a407e9e843abd03c6fa77485541a4ddcd9a";
    hash = "sha256-Odg0cmLML2L4YVcrMt7Lrie1BAl7aNEq6xqJN3/JhZs=";
  };

in {

  extraPlugins = with pkgs.vimUtils; [

    (buildVimPlugin {
      pname = "cmp-skkeleton";
      version = "2024-06-01";
      src = pkgs.fetchFromGitHub cmpSkkeletonRepo;
      meta = {
        description = "nvim-cmpのskkeletonソースです。";
        homepage = "https://github.com/uga-rosa/cmp-skkeleton";
        # license = lib.licenses.zlib;
      };
    })
  ];
}
