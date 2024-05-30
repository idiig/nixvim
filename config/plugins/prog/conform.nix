# TODO formatters installation

{ config, lib, pkgs, ... }:

{
  plugins.conform-nvim = {
    enable = true;

    formatOnSave = {
      lspFallback = true;
      # async = false;
      timeoutMs = 1000;
    };

    formattersByFt = {
      # Use the "*" filetype to run formatters on all filetypes.
      "*" = [ "codespell" ];
      # Use the "_" filetype to run formatters on filetypes that don't
      # have other formatters configured.
      "_" = [ "trim_whitespace" ];

      # web
      javascript = [["prettierd" "prettier"]];
      javascriptreact = [["prettierd" "prettier"]];
      typescript = [["prettierd" "prettier"]];
      typescriptreact = [["prettierd" "prettier"]];
      html = [["prettierd" "prettier"]];
      css = [["prettierd" "prettier"]];

      lua = ["stylua"];
      nix = ["alejandra"];
      markdown = [["prettierd" "prettier"]];
      yaml = ["yamllint" "yamlfmt"];
      python = [ "isort" "black" ];
    };

    extraOptions = {
      lazy = true;
      event = [ "BufReadPre" "BufNewFile" ]; # to disable, comment this out
    };
  };

  keymaps = [
    {
      mode = [ "n" "v" ];
      key = ",=";
      action.__raw = ''
        function()
          require("conform").format({
             lsp_fallback = true,
             async = false,
             timeout_ms = 1000,
          })
        end
      '';
      options = {
        desc = "Format file or range (in visual mode)";
      };
    }
  ];
}
