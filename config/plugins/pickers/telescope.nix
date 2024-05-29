{
  plugins.telescope = {

    enable = true;
    keymaps = {
      # Example
      # ",fg" = "live_grep";
    };

    # For extensions, look https://github.com/nix-community/nixvim/tree/main/plugins/telescope/extensions
    extensions = {

      # Fzf
      fzf-native = {
        enable = true;
        settings = {
          fuzzy = true;                    # false will only do exact matching
          override_generic_sorter = true;  # override the generic sorter
          override_file_sorter = true;     # override the file sorter
          case_mode = "smart_case";        # or "ignore_case" or "respect_case"
        };
      };

      # Undo
      undo = {
        enable = true;
        # Setting examples
        settings = {
          use_delta = true;
          use_custom_command = [
            "bash"
            "-c"
            "echo '$DIFF' | delta"
          ];
          side_by_side = true;
          diff_context_lines = 8;
          entry_format = "state #$ID";
          time_format = "!%Y-%m-%dT%TZ";
          mappings = {
            i = {
              "<cr>" = "require('telescope-undo.actions').yank_additions";
              "<s-cr>" = "require('telescope-undo.actions').yank_deletions";
              "<c-cr>" = "require('telescope-undo.actions').restore";
            };
            n = {
              "y" = "require('telescope-undo.actions').yank_additions";
              "Y" = "require('telescope-undo.actions').yank_deletions";
              "u" = "require('telescope-undo.actions').restore";
            };
          };
        };
      };

      # Media files
      media-files = {
        enable = false;  # true to turn on
        # Example
        settings = {
          filetypes = [
            "png"
            "webp"
            "jpg"
            "jpeg"
            "pdf"
            "svg"
            "esp"
          ];
          find_cmd = "rg";
        };
      };

      # File browser
      file-browser = {
        enable = false;  # off to turn on
        settings = {
          file_browser = {
            # theme = "ivy";
            hijack_netrw = true;
          };
        };
      };
    };
  };
}
