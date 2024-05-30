{ pkgs, lib, ... }:
{
  config.opt = {

    encoding = "utf-8";
    scriptencoding = "utf-8";
    ambiwidth = "double";

    relativenumber = true; # show relative line numbers
    number = true; # shows absolute line number on cursor line (when relative number is on)
    scrolloff = 999;

    tabstop = 2; # 2 spaces for tabs (prettier default)
    shiftwidth = 2; # 2 spaces for indent width
    expandtab = true; # expand tab to spaces
    autoindent = true; # copy indent from current line when starting new one
    wrap = false; # unenable line wrapping
    ignorecase = true; # ignore case when searching
    smartcase = true; # if you include mixed case in your search, assumes you want case-sensitive
    cursorline = true; # highlight the current cursor line
    smartindent = true;

    background = "dark"; # colorschemes that can be light or dark will be made dark
    signcolumn = "yes"; # show sign column so that text doesn't shift
    backspace = "indent,eol,start"; # allow backspace on indent, end of line or insert mode start position
    splitright = true; # split vertical window to the right
    splitbelow = true; # split horizontal window to the bottom
    swapfile = false; # disable swapfile
    helplang = ["ja"]; # set help language to Japanese

    clipboard = "unnamedplus";

    incsearch = true;
    wildmode = "list:longest";

    undofile = true; # Build-in persistent undo

    termguicolors = lib.mkForce pkgs.stdenv.isLinux;
  };
}
