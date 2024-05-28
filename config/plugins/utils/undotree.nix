{
  plugins.undotree = {
    enable = true;
    settings = {
      autoOpenDiff = true;
      focusOnToggle = true;
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>ut";
      action = "<cmd>UndotreeShow<CR><cmd>UndotreeFocus<CR>";
      options = {
        silent = true;
        desc = "Undotree";
      };
    }
  ];
}
