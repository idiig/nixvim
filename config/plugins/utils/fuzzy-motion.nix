# Require denops.vim
# Required by kensaku-search.vim, aka, Japanese search

{
  pkgs,
  lib,
  ...
}: let

  fuzzyMotionRepo = {
    owner = "yuki-yano";
    repo = "fuzzy-motion.vim";
    rev = "f926a6080489d03b08af66cdd1e89b8c2f5c4f39";
    hash = "sha256-rdRSDYiNGqWT84a1zSQ73XP1VqsYmkl4FMFWY/pjjBk=";
  };

in {

  extraPlugins = with pkgs.vimUtils; [

    (buildVimPlugin {
      pname = "fuzzy-motion.vim";
      version = "2024-5-30";
      src = pkgs.fetchFromGitHub fuzzyMotionRepo;
      meta = {
        description = "Jump to fuzzy match word";
        homepage = "https://github.com/yuki-yano/fuzzy-motion.vim";
        license = lib.licenses.mit;
      };
    })
  ];

  keymaps = [
    {
      mode = "n";
      key = "S";
      action = "<cmd>FuzzyMotion<CR>";
      remap = true;
    }
  ];

}
