{
  # Dependency
  # plugins.

  plugins.lualine = {
    enable = true;
    theme = "auto";
    icons_enabled = false;
      component_separators = {
        left = "";
        right = "";
      };
      section_separators = {
        left = "";
        right = "";
      };
      alwaysDivideMiddle = true;
      globalstatus = false;

    # -- configure lualine with modified theme
    # lualine.setup({
    #   options = {
    #     -- theme = my_lualine_theme,
    #     theme = 'auto',
    #     icons_enabled = false,
    #     component_separators = { left = '', right = ''},
    #     section_separators = { left = '', right = ''},
    #     always_divide_middle = true,
    #     globalstatus = false,
    #   },
    #   sections = {
    #     lualine_x = {
    #       {
    #         lazy_status.updates,
    #         cond = lazy_status.has_updates,
    #         color = { fg = "#ff9e64" },
    #       },
    #       { "encoding" },
    #       { "fileformat" },
    #       { "filetype" },
    #     },
    #   },
    # })

  };
}
