{
  plugins.which-key = {
    enable = true;
    triggers = "auto";
    # Some usefull default settings; you can change follow
    # More on https://nix-community.github.io/nixvim/plugins/which-key/index.html?highlight=which-key#pluginswhich-keyshowkeys
    # hidden = ["<silent>" "<cmd>" "<Cmd>" "<CR>" "^:" "^ " "^call " "^lua "];
    # ignoreMissing = false;
    # operators = {gc = "Comments";};
    registrations = {
      # TODO: Change <leader>
      # Space mode
      "<leader>f" = "+File";
      # # "<leader>F" = "Open file picker at current working directory";
      # # "<leader>b" = "Open buffer picker";
      # # "<leader>j" = "Open jumplist picker (TODO: Harpoon)";
      # "<leader>s" = "Open symbol picker (LSP)";
      # "<leader>S" = "Open workspace symbol picker (LSP)";
      # "<leader>d" = "Open diagnostic picker (LSP)";
      # "<leader>D" = "Open workspace diagnostic picker (LSP)";
      # "<leader>a" = "Perform code action (LSP)";
      # # "<leader>'" = "Open last picker";
      # "<leader>g" = "Debug";
      "<leader>w" = "+Window";
      # "<leader>y" = "Yank selections to clipboard";
      # "<leader>Y" = "Yank main selection to clipboard";
      # "<leader>p" = "Paste clipboard after selections";
      # "<leader>P" = "Paste clipboard before selections";
      # "<leader>R" = "Replace selections by clipboard content";
      # # "<leader>/" = "Global search in workspace folder (TODO: telescope)";
      # "<leader>k" = "Show docs for item under cursor";
      # "<leader>r" = "Rename symbol";
      # "<leader>h" = "Select symbol references";
      # "<leader>c" = "Comment/uncomment selections";
      # "<leader>C" = "Block comment/uncomment selections";
      # "<leader>A-c" = "Line comment/uncomment selections";
      # # "<leader>?" = "Open command palette";

      # # Goto mode
      # # "g" = "Goto";
      # "gg" = "Goto line number <n> else file start";
      # "ge" = "Goto last line";
      # "gf" = "Goto files/URLs in selections";
      # "gh" = "Goto line start";
      # "gl" = "Goto line end";
      # "gs" = "Goto first non-blank in line";
      # "gd" = "Goto definition";
      # "gD" = "Goto declaration";
      # "gy" = "Goto type definition";
      # "gr" = "Goto references";
      # "gi" = "Goto implementation";
      # "gt" = "Goto window top";
      # "gc" = "Goto window center";
      # "gb" = "Goto window bottom";
      # "ga" = "Goto last accessed file";
      # "gm" = "Goto last modified file";
      # "gn" = "Goto next buffer";
      # "gp" = "Goto previous buffer";
      # "gk" = "Move up";
      # "gj" = "Move down";
      # "g." = "Goto last modification";
      # "gw" = "Jump to a two-character label";

      # # View mode
      # # "z" = "View";

      # # Match mode
      # # "m" = "Match";

      # # Window mode
      # # "<leader>w" = "Window";

      # # More utils
      # # "," = "Utils";
    };
  };

  extraConfigLua = ''
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
  '';
}
