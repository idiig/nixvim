{
  plugins.lualine = {
    enable = true;
    theme = "auto";
    iconsEnabled = false;  # This will autoload pkgs.vimPlugins.nvim-web-devicons
    componentSeparators = {
      left = "";
      right = "";
    };
    sectionSeparators = {
      left = "";
      right = "";
    };
    alwaysDivideMiddle = true;
    globalstatus = false;

    sections = {
      # +-------------------------------------------------+
      # | a | b | c                             x | y | z |
      # +-------------------------------------------------+
      lualine_x = [
        "encoding"
        "fileformat"
        "filetype"
      ];
    };
  };
}
