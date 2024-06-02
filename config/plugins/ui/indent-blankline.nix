{
  plugins.indent-blankline = {
    enable = true;
    settings = {
      indent = {
        smart_indent_cap = true;
        # char = "│";
        char = " ";
      };
      scope = {
        show_start = false;
        show_end = false;
        show_exact_scope = true;
      };
    };
  };
}
