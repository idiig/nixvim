# Require copilot.lua or copilot.vim
# Require plenary.log in plenary.nvim

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

in {

  extraPlugins = with pkgs.vimUtils; [

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
    require("CopilotChat").setup { }
  '';

  keymaps = [
    {
      mode = "x";
      key = ",a";
      action = "+copilot";
      options = {
        desc = "Ask Copilot";
      };
    }
    {
      mode = "x";
      key = ",ae";
      action = "<cmd>CopilotChatExplain<cr>";
    }
    {
      mode = "x";
      key = ",af";
      action = "<cmd>CopilotChatFix<cr>";
    }
    {
      mode = "x";
      key = ",ad";
      action = "<cmd>CopilotChatDocs<cr>";
    }
    {
      mode = "x";
      key = ",ac";
      action = "<cmd>CopilotChatCommit<cr>";
    }
  ];
}

# { pkgs, ... }:

# {
#   plugins = {
#     copilot-lua = {
#       enable = true;
#       # suggestion = { enabled = false };
#       # panel = { enabled = false };
#     };
#     # copilotChat-nvim = {
#     #   enable = true;
#     # };
#   };

#   extraPlugins = with pkgs.vimExtraPlugins; [
#     copilotChat-nvim
#   ];

#   extraConfigLua = ''
#     require("copilot").setup({
#       suggestion = { enabled = false },
#       panel = { enabled = false },
#     })
#     require("CopilotChat").setup { }
#   '';

#   keymaps = [
#     {
#       mode = "x";
#       key = ",a";
#       action = "+copilot";
#     }
#     {
#       mode = "x";
#       key = ",ae";
#       action = "<cmd>CopilotChatExplain<cr>";
#     }
#     {
#       mode = "x";
#       key = ",af";
#       action = "<cmd>CopilotChatFix<cr>";
#     }
#     {
#       mode = "x";
#       key = ",ad";
#       action = "<cmd>CopilotChatDocs<cr>";
#     }
#     {
#       mode = "x";
#       key = ",ac";
#       action = "<cmd>CopilotChatCommit<cr>";
#     }
#   ];
# }
