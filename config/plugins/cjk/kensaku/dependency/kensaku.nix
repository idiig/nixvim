{
  pkgs,
  lib,
  ...
}: let

  kensakuRepo = {
    owner = "lambdalisue";
    repo = "kensaku.vim";
    rev = "7ddad2f355a3678597ebbac666e2ee6dda6b9cf3";
    hash = "sha256-oFjGHB9DvN3C201qbHuIm+WXqpT6wKGvNQnldUdlszs=";
  };

in {

  extraPlugins = with pkgs.vimUtils; [

    (buildVimPlugin {
      pname = "vim-kensaku";
      version = "v4.0.0";
      src = pkgs.fetchFromGitHub kensakuRepo;
      meta = {
        description = "ローマ字のまま日本語検索";
        homepage = "https://github.com/lambdalisue/vim-kensaku";
      };
    })
  ];

  extraConfigLua = ''
    vim.cmd("let g:fuzzy_motion_matchers = ['kensaku', 'fzf']")
  '';
}
