{
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    updateInInsert = false;
    sources = {

      code_actions = {
        gitsigns.enable = true;
        statix.enable = true;
      };

      diagnostics = {
        statix.enable = true;
        yamllint.enable = true;
      };

      formatting = {

        # nix
        alejandra.enable = true;

        # python
        black = {
          enable = true;
          withArgs = ''
            {
              extra_args = { "--fast" },
            }
          '';
        };

        # general
        prettier = {
          enable = true;
          disableTsServerFormatter = true;
          withArgs = ''
            {
              extra_args = { "--no-semi", "--single-quote" },
            }
          '';
        };
        stylua.enable = true;

        # yaml
        yamlfmt.enable = true;

      };
    };
  };
  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>cf";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
      options = {
        silent = true;
        desc = "Format";
      };
    }
  ];
}
