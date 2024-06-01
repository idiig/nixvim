# Need ~/.skk/* (current use ~/.skk/SKK-JISYO.L.unannotated)
{
  pkgs,
  lib,
  ...
}: let

  skkeletonRepo = {
    owner = "vim-skk";
    repo = "skkeleton";
    rev = "953807bf361aa396c0b7377dddc4688d8e07c3ea";
    hash = "sha256-CnM2XYkc+ZWnr0vVh+V8BpWnn52RzQkjHop2OHqzHzo=";
  };

in {

  extraPlugins = with pkgs.vimUtils; [

    (buildVimPlugin {
      pname = "skkeleton";
      version = "2024-06-01";
      src = pkgs.fetchFromGitHub skkeletonRepo;
      meta = {
        description = "skkeleton is a Vim/Neovim plugin that provides japanese input environment called SKK.";
        homepage = "https://github.com/vim-skk/skkeleton";
        license = lib.licenses.zlib;
      };
    })
  ];

  keymaps = [
    {
      mode = "i";
      key = "kj";
      action = "<Plug>(skkeleton-toggle)";
      options = {
        desc = "Toggle skkeleton";
        noremap = true;
      };
    }
    {
      mode = "c";
      key = "kj";
      action = "<Plug>(skkeleton-toggle)";
      options = {
        desc = "Toggle skkeleton";
        noremap = true;
      };
    }
  ];

  # TODO: add skkeleton as a source in cmp
  extraConfigLua = ''

    -- 以下と同等のLUAコード
    -- call skkeleton#config({ 'globalJisyo': '~/.skk/SKK-JISYO.L' })

    vim.api.nvim_exec(
      [[
      call skkeleton#config({
        \ 'globalDictionaries': ["~/.skk/SKK-JISYO.L.unannotated"],
        \ 'userDictionary': expand('~/.skk/SKK-JISYO.user'),
        \  'eggLikeNewline': v:true,
        \ })
      ]],
      false
    )

    vim.api.nvim_exec(
      [[
      call skkeleton#register_kanatable('rom',{
        \ 'hh': ['お', 'h'],
        \ 'jk': 'escape',
        \ 'z,': ['-'],
        \ "z\<Space>": ["\u3000"],
        \ })
      ]],
      false
    )

  '';
}
