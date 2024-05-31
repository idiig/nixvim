{
  plugins = {

    cmp = {
      enable = true;
      settings = {
        autoEnableSources = true;
        experimental = {ghost_text = true;};
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };
        snippet = {expand = "luasnip";};
        formatting = {fields = ["kind" "abbr" "menu"];};
        sources = [
          # We have `autoEnableSources = true;` in NixVim !!
          # This will cans the sources array and install the plugins if they are known to nixvim.
          # See example: https://github.com/elythh/nixvim/blob/main/config/plug/completion/cmp.nix
          # Full list see: https://github.com/nix-community/nixvim/blob/main/plugins/completion/cmp/sources.nix
          {
            name = "nvim_lsp";
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
            keywordLength = 3;
            group_index = 2;  # This is to set priority
          }
          {
            name = "fuzzy-buffer";
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            keywordLength = 3;
            group_index = 3;  # This is to set priority
          }
          {
            name = "path"; # file system paths
            keywordLength = 3;
            group_index = 2;  # This is to set priority
          }
          {
            name = "fuzzy-path"; # file system paths
            keywordLength = 3;
          }
          {
            name = "luasnip"; # snippets
            keywordLength = 3;
            group_index = 1;  # This is to set priority
          }
          {
            name = "copilot";
            keywordLength = 3;
            group_index = 2;  # This is to set priority
          }
          {
            name = "latex-symbols";
            keywordLength = 3;
            group_index = 2;  # This is to set priority
          }
          # {
          #   name = "cmdline";
          #   keywordLength = 3;
          # }
          {
            name = "dictionary";
            keywordLength = 3;
            group_index = 2;  # This is to set priority
          }
          {
            name = "treesitter";
            keywordLength = 3;
            group_index = 1;  # This is to set priority
          }
          # {
          #   name = "spell";
          #   keywordLength = 3;
          # }
          # {
          #   name = "emoji";
          # }
          # {
          #   name = "skkeleton"; # Japanese input
          #   keyword_length = 2;
          # }
        ];

        window = {
          completion = {border = "solid";};
          documentation = {border = "solid";};
        };

        mapping = {
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
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
        };
      };
    };

  };
  extraConfigLua = ''
    luasnip = require("luasnip")
    kind_icons = {
      Text = "??",
      Method = "?",
      Function = "??",
      Constructor = "?",
      Field = "?",
      Variable = "??",
      Class = "?",
      Interface = "?",
      Module = "??",
      Property = "?",
      Unit = "?",
      Value = "?",
      Enum = "?",
      Keyword = "?",
      Snippet = "?",
      Color = "?",
      File = "?",
      Reference = "?",
      Folder = "?",
      EnumMember = "?",
      Constant = "?",
      Struct = "?",
      Event = "?",
      Operator = "?",
      TypeParameter = "?",
    }

    local cmp = require'cmp'

    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({'/', "?" }, {
      sources = {
        { name = 'buffer' }
      }
    })

    -- Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
      }, {
        { name = 'buffer' },
      })
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      }),
    --   formatting = {
    --    format = function(_, vim_item)
    --      vim_item.kind = cmdIcons[vim_item.kind] or "FOO"
    --    return vim_item
    --   end
    -- }
    })
  '';
}
