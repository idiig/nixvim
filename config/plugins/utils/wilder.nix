{
  plugins.wilder = {
    enable = true;
    modes = [ ":" "/" "?" ];
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
