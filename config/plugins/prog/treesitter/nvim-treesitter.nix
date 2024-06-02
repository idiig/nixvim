# TODO: add config
{
  plugins = {
    treesitter = {
      enable = true;
      ensureInstalled = true; # auto install
      nixGrammars = true; # Install grammars with Nix
      folding = false; # treesitter based folding
      indent = true; # treesitter based folding
      nixvimInjections = true; #  enable nixvim specific injections, like lua highlighting in extraConfigLua.
      # TODO: translate
      # incremental_selection = {
      #   enable = true,
      #   keymaps = {
      #     init_selection = 'gnn',
      #     node_incremental = 'grn',
      #     scope_incremental = 'grc',
      #     node_decremental = 'grm',
      #   },
      # },
    };
    treesitter-context = {
      enable = true;
      settings = {max_lines = 2;};
    };
  };
}
