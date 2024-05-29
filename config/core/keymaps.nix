{
  globals.mapleader = " ";

  keymaps = [
    # General Keymaps
    {
      mode = "i";
      key = "jk";
      action = "<ESC>";
      options = { desc = "Exit insert mode with jk"; };
    }
    {
      mode = "n";
      key = "<leader>nh";
      action = ":nohl<CR>";
      options = { desc = "Clear search highlights"; };
    }
    {
      mode = "v";
      key = "gl";
      action = "$";
    }
    {
      mode = "v";
      key = "gh";
      action = "0";
    }
    {
      mode = "n";
      key = "gl";
      action = "$";
    }
    {
      mode = "n";
      key = "gh";
      action = "0";
    }
    {
      mode = "c";
      key = "<C-b>";
      action = "<Left>";
    }
    {
      mode = "c";
      key = "<C-f>";
      action = "<Right>";
    }
    {
      mode = "c";
      key = "<C-n>";
      action = "<Down>";
    }
    {
      mode = "c";
      key = "<C-p>";
      action = "<Up>";
    }
    {
      mode = "c";
      key = "<C-a>";
      action = "<Home>";
    }
    {
      mode = "c";
      key = "<C-e>";
      action = "<End>";
    }
    {
      mode = "c";
      key = "<C-d>";
      action = "<Del>";
    }
    {
      mode = "n";
      key = "<leader>+";
      action = "<C-a>";
      options = { desc = "Increment number"; };
    }
    {
      mode = "n";
      key = "<leader>-";
      action = "<C-x>";
      options = { desc = "Decrement number"; };
    }
    {
      mode = "n";
      key = "<leader>wv";
      action = "<C-w>v";
      options = { desc = "Split window vertically"; };
    }
    {
      mode = "n";
      key = "<leader>ws";
      action = "<C-w>s";
      options = { desc = "Split window horizontally"; };
    }
    {
      mode = "n";
      key = "<leader>w=";
      action = "<C-w>=";
      options = { desc = "Make splits equal size"; };
    }
    {
      mode = "n";
      key = "<leader>wq";
      action = "<cmd>close<CR>";
      options = { desc = "Close current split"; };
    }
    {
      mode = "n";
      key = "<leader>to";
      action = "<cmd>tabnew<CR>";
      options = { desc = "Open new tab"; };
    }
    {
      mode = "n";
      key = "<leader>tx";
      action = "<cmd>tabclose<CR>";
      options = { desc = "Close current tab"; };
    }
    {
      mode = "n";
      key = "<leader>tn";
      action = "<cmd>tabn<CR>";
      options = { desc = "Go to next tab"; };
    }
    {
      mode = "n";
      key = "<leader>tp";
      action = "<cmd>tabp<CR>";
      options = { desc = "Go to previous tab"; };
    }
    {
      mode = "n";
      key = "<leader>tf";
      action = "<cmd>tabnew %<CR>";
      options = { desc = "Open current buffer in new tab"; };
    }
  ];

  extraConfigLua = ''
    function ToggleLineNumber()
      if vim.wo.number then
        vim.wo.number = false
      else
        vim.wo.number = true
        vim.wo.relativenumber = false
      end
    end

    function ToggleRelativeLineNumber()
      if vim.wo.relativenumber then
        vim.wo.relativenumber = false
      else
        vim.wo.relativenumber = true
          vim.wo.number = false
      end
    end

    function ToggleWrap()
      vim.wo.wrap = not vim.wo.wrap
    end
  '';
}
