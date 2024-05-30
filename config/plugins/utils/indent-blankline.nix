{
  plugins.indent-blankline = {
    enable = true;
    settings = {
      indent = {
        smart_indent_cap = true;
        char = " ";
      };
      scope = {
        enabled = true;
        char = "?";
      };
    };
  };

  extraConfigLua = ''
    require("ibl").setup()
  '';
}
