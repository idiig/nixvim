{
  keymaps = [
    # Jumplist picker
    {
      mode = "n";
      key = "<leader>j";
      action = "<cmd>Telescope jumplist<cr>";
      options = {
        desc = "Open jumplist picker (:Telescope jumplist)";
      };
    }

  ];
}
