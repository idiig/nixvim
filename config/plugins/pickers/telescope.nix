{
  plugins.telescope = {

    enable = true;
    keymaps = {
      # Example
      # ",fg" = "live_grep";
    };

    # Example default settings
    settings.defaults = {
      file_ignore_patterns = [
        "^.git/"
        "^.mypy_cache/"
        "^__pycache__/"
        "^output/"
        "^data/"
        "%.ipynb"
      ];
      path_display = {
        truncate = 3;
      };
      layout_config = {
        prompt_position = "top";
      };
      mappings = {
        i = {
          "<C-j>" = {
            __raw = "require('telescope.actions').move_selection_next";
          };
          "<C-k>" = {
            __raw = "require('telescope.actions').move_selection_previous";
          };
          "<C-n>" = {
            __raw = "require('telescope.actions').move_selection_next";
          };
          "<C-p>" = {
            __raw = "require('telescope.actions').move_selection_previous";
          };
          # FIXME
          "<C-q>" = {
            __raw = "require('telescope.actions').send_selected_to_qflist + require('telescope.actions').open_qflist";
          };
        };
      };
      selection_caret = "> ";
      set_env = {
        COLORTERM = "truecolor";
      };
      sorting_strategy = "ascending";
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
        enable = true;
        settings = {
          file_browser = {
            # theme = "ivy";
            hijack_netrw = true;
          };
        };
      };

      # Frequency
      frecency = {
        enable = false;
      };
    };
  };
}
