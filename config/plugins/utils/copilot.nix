{
  pkgs,
  lib,
  ...
}: let
  copilotChatRepo = {
    owner = "copilotc-nvim";
    repo = "CopilotChat.nvim";
    rev = "2771f1fa7af502ea4226a88a792f4e4319199906";
    hash = "sha256-Q+g81BQVQTY5J2c2ZWB7bjJLuNSdI0PAan+75YJ7mI0=";
  };
  copilotRepo = {
    owner = "zbirenbaum";
    repo = "copilot.lua";
    rev = "f7612f5af4a7d7615babf43ab1e67a2d790c13a6";
    hash = "sha256-JX3sdsnOnjkY7r9fCtC2oauo0PXF3SQ+SHUo8ifBvAc=";
  };
in {

  extraPlugins = with pkgs.vimUtils; [

    # coplilot
    (buildVimPlugin {
      pname = "copilot";
      version = "2024-05-28";
      src = pkgs.fetchFromGitHub copilotChatRepo;
      meta = {
        description = "This plugin is the pure lua replacement for github/copilot.vim.";
        homepage = "https://github.com/zbirenbaum/copilot.lua";
        license = lib.licenses.mit;
      };
    })

    # copilotchat
    (buildVimPlugin {
      pname = "copilotchat";
      version = "2.4.0";
      src = pkgs.fetchFromGitHub copilotChatRepo;
      meta = {
        description = "Chat with GitHub Copilot in Neovim";
        homepage = "https://github.com/CopilotC-Nvim/CopilotChat.nvim/";
        license = lib.licenses.gpl3;
      };
    })
  ];

  extraConfigLua = ''
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
    require("CopilotChat").setup { }
  '';

  keymaps = [
    {
      mode = "x";
      key = "<leader>a";
      action = "+copilot";
    }
    {
      mode = "x";
      key = "<leader>ae";
      action = "<cmd>CopilotChatExplain<cr>";
    }
    {
      mode = "x";
      key = "<leader>af";
      action = "<cmd>CopilotChatFix<cr>";
    }
    {
      mode = "x";
      key = "<leader>ad";
      action = "<cmd>CopilotChatDocs<cr>";
    }
    {
      mode = "x";
      key = "<leader>ac";
      action = "<cmd>CopilotChatCommit<cr>";
    }
  ];
}
