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
  ];
}
