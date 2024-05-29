# Required by plugins written in deno
{
  pkgs,
  lib,
  ...
}: let
  denopsRepo = {
    owner = "vim-denops";
    repo = "denops.vim";
    rev = "9dd9ae9da9b8d65916dd44e0e4d881665397de63";
    hash = "sha256-ly7DCy/JsagXmNF7JNtd7GpLGWSZ1H2AsjKQk0xncbM=";
};

in {

  extraPlugins = with pkgs.vimUtils; [

    # denops
    (buildVimPlugin {
      pname = "denops.vim";
      version = "v6.0.7";
      src = pkgs.fetchFromGitHub denopsRepo;
      meta = {
        description = "An ecosystem for Vim/Neovim enabling developers to write plugins in Deno.";
        homepage = "https://github.com/vim-denops/denops.vim";
        license = lib.licenses.mit;
      };
    })
  ];
}
