{
  plugins.telescope = {
    enable = true;
    extensions.fzf-native = { enable = true; };
    keymaps = {
      "<leader>ff" = {
        action = "<cmd>Telescope find_files<cr>";
        options = {
          desc = "Open file picker (Telescope)";
        };
      };
      "<leader>fr" = {
        action = "<cmd>Telescope find_oldfiles<cr>";
        options = {
          desc = "Open recent file (Telescope)";
        };
      };
      "<leader>fg" = {
        action = "git_files";
        options = {
          desc = "Global search in git project (Telescope)";
        };
      };
      "<leader>/" = {
        action = "<cmd>Telescope live_grep<cr>";  # Require ripgrep
        options = {
          desc = "Global search in workspace folder (Telescope)";
        };
      };
      # "<leader>/" = {
      #   mode = "v";
      #   action = "<cmd>Telescope grep_string<cr>";
      #   options = {
      #     desc = "Global search current string in workspace folder (Telescope)";
      #   };
      # };
    };
  };
}
