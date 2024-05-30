{ pkgs }:

pkgs.mkShell {
  buildInputs = with pkgs; [

    # Utils
    git
    lazygit
    make
    unzip

    # Search
    ripgrep
    fd
    fzf
    rg

    # # Formatter
    # prettierd
    # stylua
    # black # for python format
    # codespell
    # isort

    # Dev
    deno
    # neovim-ruby-host
    # jsregexp

    # Quarto-nvim-kickstarter dependency
    imagemagick
    # libmagickwand-dev
    lua
    luajit
  ];
}
