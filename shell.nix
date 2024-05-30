{ pkgs }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    lazygit

    git

    jsregexp

    # neovim-ruby-host

    ripgrep
    fd
    fzf

    prettier
    stylua
    black # for python format
    codespell
    isort

    deno

  ];
}
