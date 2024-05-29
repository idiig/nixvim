{
  keymaps = [
    # Buffer picker
    {
      mode = "n";
      key = "<leader>b";
      action = "<cmd>Telescope buffers<cr>";
      options = {
        desc = "Open buffer picker (:Telescope buffers)";
      };
    }
  ];
}
