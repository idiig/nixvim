{
  plugins.luasnip = {
    enable = true;
    fromVscode = [
      # enable friendly-snippets
      # -> require("luasnip.loaders.from_vscode").lazy_load({})
      {}
      # enable custom snippets
      # -> require("luasnip.loaders.from_vscode").lazy_load({['paths'] = {'/nix/store/.../path/to/snippets'}})
      { paths = ./snips; }
    ];
    extraConfig = {
      enable_autosnippets = false;
      store_selection_keys = "<tab>";
    };
  };
}
