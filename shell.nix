{ pkgs }:

pkgs.mkShell {
  buildInputs = with pkgs; [

    # Utils
    git
    lazygit

    # Search
    ripgrep
    fd
    fzf

    # Formatter
    prettier
    stylua
    black # for python format
    codespell
    isort

    # Dev
    deno
    # neovim-ruby-host
    # jsregexp

  ];
}
