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
      incrementalSelection = {
        enable = true;
        # defaul keymaps
        keymaps = {
          initSelection = "gnn";
          nodeIncremental = "grn";
          scopeIncremental = "grc";
          nodeDecremental = "grm";
        };
      };
    };
  };
}
