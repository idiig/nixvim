{
  plugins.wilder = {
    enable = true;
    modes = [ ":" "/" "?" ];
    renderer =  ''
    wilder.wildmenu_renderer({
      -- highlighter applies highlighting to the candidates
      highlighter = wilder.basic_highlighter(),
      separator = ' · ',
      left = {' ', wilder.wildmenu_spinner(), ' '},
      right = {' ', wilder.wildmenu_index()},
    })
    '';
    usePythonRemotePlugin = true;
    pipeline =   [
      ''
      wilder.branch(
        wilder.cmdline_pipeline({
          language = 'python',
          fuzzy = 1,
        }),
        wilder.python_search_pipeline({
          pattern = wilder.python_fuzzy_pattern(),
          sorter = wilder.python_difflib_sorter(),
          engine = 're',
        })
      )
      ''
    ];
  };
}
