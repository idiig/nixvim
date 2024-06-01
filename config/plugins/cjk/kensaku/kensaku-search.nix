{
  pkgs,
  lib,
  ...
}: let

  kensakuSearchRepo = {
    owner = "lambdalisue";
    repo = "kensaku-search.vim";
    rev = "9568c2b174a9cf31bd9922c0a991117f4dd4f0c3";
    hash = "sha256-6NrR52kdCPisg+oZO5fpXCsl/NJGChFQGXrEZCg4wh0=";
  };

in {

  extraPlugins = with pkgs.vimUtils; [

    (buildVimPlugin {
      pname = "vim-kensaku-search";
      version = "2024-5-30";
      src = pkgs.fetchFromGitHub kensakuSearchRepo;
      meta = {
        description = "lambdalisue/kensaku.vim を / や ? で自然に利用する";
        homepage = "https://github.com/lambdalisue/vim-kensaku-search";
      };
    })
  ];

  keymaps = [
    {
      mode = "c";
      key = "<cr>";
      action = "<Plug>(kensaku-search-replace)<cr>";
      options = {
        noremap = true;
      };
    }
  ];
}
