# Usage:
#     Old text                    Command         New text
# --------------------------------------------------------------------------------
#     surr*ound_words             ysiw)           (surround_words)
#     *make strings               ys$"            "make strings"
#     [delete ar*ound me!]        ds]             delete around me!
#     remove <b>HTML t*ags</b>    dst             remove HTML tags
#     'change quot*es'            cs'"            "change quotes"
#     <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
#     delete(functi*on calls)     dsf             function calls

{
  pkgs,
  lib,
  ...
}: let

  nvimSurroundRepo = {
    owner = "kylechui";
    repo = "nvim-surround";
    rev = "79aaa42da1f698ed31bcbe7f83081f69dca7ba17";
    hash = "sha256-Mg60htwXPqNKu+JnexKiKF3Huvr7pBNdvc6f3Kt2FRA=";
  };

in {

  extraPlugins = with pkgs.vimUtils; [

    # copilotchat
    (buildVimPlugin {
      pname = "nvim-surround";
      version = "v2.1.0";
      src = pkgs.fetchFromGitHub nvimSurroundRepo;
      meta = {
        description = "Surround selections, stylishly ??";
        homepage = "https://github.com/kylechui/nvim-surround";
        license = lib.licenses.mit;
      };
    })
  ];

  extraConfigLua = ''
    require("nvim-surround").setup()
  '';
}
