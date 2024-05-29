{

  keymaps = [

    # Picker history
    {
      mode = "n";
      key = "<leader>'";
      action = "<cmd>Telescope pickers<cr>";
      options = {
        desc = "Open previous pickers (:Telescope loclist)";
      };
    }

    # File picker
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope loclist<cr>";
      options = {
        desc = "Open file picker at current windows location (:Telescope loclist)";
      };
    }
    {
      mode = "n";
      key = "<leader>fF";
      action = "<cmd>Telescope find_files<cr>";
      options = {
        desc = "Open file picker (:Telescope find_files)";
      };
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = "<cmd>Telescope oldfiles<cr>";
      options = {
        desc = "Open recent file (:Telescope oldfiles)";
      };
    }

    # Buffer picker
    {
      mode = "n";
      key = "<leader>b";
      action = "<cmd>Telescope buffers<cr>";
      options = {
        desc = "Open buffer picker (:Telescope buffers)";
      };
    }

    # Jumplist picker
    {
      mode = "n";
      key = "<leader>j";
      action = "<cmd>Telescope jumplist<cr>";
      options = {
        desc = "Open jumplist picker (:Telescope jumplist)";
      };
    }

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

    # Search commands
    {
      mode = "n";
      key = "<leader><space>";
      action = "<cmd>Telescope commands<cr>";
      options = {
        desc = "Search commands (:Telescope commands)";
      };
    }
  ];

}
