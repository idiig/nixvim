{
  keymaps = [
    # File picker
    # {
    #   mode = "n";
    #   key = "<leader>fF";
    #   action = "<cmd>Telescope loclist<cr>";
    #   options = {
    #     desc = "Open file picker at current windows location (:Telescope loclist)";
    #   };
    # }
    {
      mode = "n";
      key = "<leader>ff";
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
  ];
}
