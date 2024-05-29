{
  keymaps = [
    # Search in buffers/projects
    {
      mode = "n";
      key = "<leader>s";
      action = "<cmd>Telescope current_buffer_fuzzy_find<cr>";
      options = {
        desc = "Search in current buffer (:Telescope current_buffer_fuzzy_find)";
      };
    }
    # TODO: Search current string in current buffer
    # {
    #   mode = "v";
    #   key = "<leader>s";
    #   action = "<cmd>Telescope current_buffer_fuzzy_find<cr>";
    #   options = {
    #     desc = "Search current string in current buffer (:Telescope current_buffer_fuzzy_find)";
    #   };
    # }
    {
      mode = "n";
      key = "<leader>/";
      action = "<cmd>Telescope live_grep<cr>";  # Require ripgrep
      options = {
        desc = "Global search in workspace folder (:Telescope live_grep)";
      };
    }
    {
      mode = "v";
      key = "<leader>/";
      action = "<cmd>Telescope grep_string<cr>";
      options = {
        desc = "Global search current string in workspace folder (:Telescope grep_string)";
      };
    }
  ];
}
