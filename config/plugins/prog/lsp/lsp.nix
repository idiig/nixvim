{
  plugins = {
    lsp-format = {enable = true;};
    lsp = {
      enable = true;
      servers = {
        html = {enable = true;};  # html
        lua-ls = {enable = true;};  # lua
        nil_ls = {enable = true;};  #nix
        marksman = {enable = true;};  # markdown
        pyright = {enable = true;};  # python
        tsserver = {enable = false;};  # typescript
        yamlls = { enable = true; };  # yaml
        bashls = {enable = true;};  # shell
        cmake = {enable = true;};  # cmake
        # cssl = {enable = true;};  # css
        htmx = {enable = true;};  # htmx
        jsonls = {enable = true;};  # json
        dockerls = {enable = true;};  # docker
        hls = {enable = true;};  # hasckell
        texlab = {enable = true;};  # TeX
        typst-lsp = {enable = true;};  # typst
        # TODO: R
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
  extraConfigLua = ''
    local _border = "rounded"

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = _border
      }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = _border
      }
    )

    vim.diagnostic.config{
      float={border=_border}
    };

    require('lspconfig.ui.windows').default_options = {
      border = _border
    }
  '';
}
