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

      javascript = [ "prettier" ];
      typescript = [ "prettier" ];
      javascriptreact = [ "prettier" ];
      typescriptreact = [ "prettier" ];
      svelte = [ "prettier" ];
      css = [ "prettier" ];
      php = [ "prettier" ];
      html = [ "prettier" ];
      json = [ "prettier" ];
      yaml = [ "prettier" ];
      markdown = [ "prettier" ];
      graphql = [ "prettier" ];
      lua = [ "stylua" ];
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
