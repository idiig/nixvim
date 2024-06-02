# https://nix-community.github.io/nixvim/plugins/cmp/index.html
# https://github.com/elythh/nixvim/blob/main/config/plug/completion/cmp.nix
# https://github.com/MikaelFangel/nixvim-config/blob/main/config/cmp.nix
# Sources list see: https://github.com/nix-community/nixvim/blob/main/plugins/completion/cmp/sources.nix

{ lib, ... }:

let
  ui = import ../ui/misc.nix;
in

{
  plugins = {

    cmp = {

      enable = true;

      settings = {

        # Gloabal settings
        autoEnableSources = true;
        experimental = { ghost_text = true; };
        performance = {
          debounce = 60;
          fetching_timeout = 200;
          max_view_entries = 6;
        };

        # Snippet
        snippet = { expand = "luasnip"; };

        # Source
        sources = [
          # We have `autoEnableSources = true;` in NixVim !!
          # This will cans the sources array and install the plugins if they are known to nixvim.
          # See example: https://github.com/elythh/nixvim/blob/main/config/plug/completion/cmp.nix
          # Full list see: https://github.com/nix-community/nixvim/blob/main/plugins/completion/cmp/sources.nix
          {
            name = "nvim_lsp";
            keyword_length = 3;
            group_index = 1;  # This is to set priority
            #  hide all entries with kind `Text` from the `nvim_lsp` filter
            entry_filter = ''
            function(entry, ctx)
              return require('cmp.types').lsp.CompletionItemKind[entry:get_kind()] ~= 'Text'
            end
            '';
          }
          {
            name = "buffer"; # text within current buffer
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            keyword_length = 3;
            group_index = 2;  # This is to set priority
          }
          {
            name = "fuzzy-buffer";
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            keyword_length = 3;
            group_index = 3;  # This is to set priority
          }
          {
            name = "path"; # file system paths
            keyword_length = 3;
            group_index = 2;  # This is to set priority
          }
          {
            name = "fuzzy-path"; # file system paths
            keyword_length = 3;
          }
          {
            name = "luasnip"; # snippets
            keyword_length = 3;
            group_index = 2;  # This is to set priority
          }
          {
            name = "copilot";
            keyword_length = 3;
            group_index = 2;  # This is to set priority
          }
          {
            name = "treesitter";
            keyword_length = 3;
            group_index = 1;  # This is to set priority
          }
          {
            name = "dictionary";
            keyword_length = 3;
            group_index = 2;  # This is to set priority
          }
          {
            name = "spell";
            keyword_length = 3;
            option.filetype.__raw = "vim.api.nvim_list_bufs";
          }
          # filetype specific sources
          {
            name = "git";
            keyword_length = 3;
            option.filetype.__raw = "gitcommit";
          }
          # {
          #   name = "cmdline";
          #   keywordlength = 2;
          #   # FIXME:
          #   option.cmdline.__raw = "':'";
          # }
          # {
          #   name = "latex-symbols";
          #   keyword_length = 1;
          #   group_index = 2;  # This is to set priority
          #   # FIXME:
          #   trigger_characters =  [ "$" ];
          # }
          # {
          #   name = "emoji";
          # }
          # Extra sources
          {
            name = "skkeleton"; # Japanese input
            keyword_length = 3;
          }

        ];

        # UI config
        formatting = {
          fields = [ "abbr" "kind" "menu" ];
          # format =
          #   # Example here: https://github.com/MikaelFangel/nixvim-config/blob/main/config/cmp.nix
          #   # BTW, I use lspkind
          #   # lua
          #   ''
          #   ...
          #   '';
        };

        window = {
          completion = {
            winhighlight =
              "FloatBorder:CmpBorder,Normal:CmpPmenu,CursorLine:CmpSel,Search:PmenuSel";
            scrollbar = false;
            sidePadding = 0;
            border = ui.border_hard;
            # border = ui.border_soft;
            # border = ui.border_soft;  # i.e., border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
          };
          documentation = {
            border = ui.border_hard;
            # border = ui.border_soft;  # i.e., border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
            winhighlight =
              "FloatBorder:CmpBorder,Normal:CmpPmenu,CursorLine:CmpSel,Search:PmenuSel";
          };
        };

        # Keymaps
        mapping = {
          # "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-p>" = "cmp.mapping.select_prev_item()";
          "<C-e>" = "cmp.mapping.abort()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          # confirm integration
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
          "<Tab>" =
            # lua
            ''
              function(fallback)
                if cmp.visible() then
                  cmp.select_next_item()
                elseif require("luasnip").expand_or_jumpable() then
                  vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
                else
                  fallback()
                end
              end
            '';
          "<S-Tab>" =
            # lua
            ''
              function(fallback)
                if cmp.visible() then
                  cmp.select_prev_item()
                elseif require("luasnip").jumpable(-1) then
                  vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
                else
                  fallback()
                end
              end
            '';
        };
      };
    };
  };
}
