# To enable send code from python/r/qmd documets to a terminal or REPL
# like ipython, R, bash
# require 'otter'
{
  plugins.vim-slime = {
    enable = true;
    settings = {
      # target = "tmux";
      target = "neovim";
      no_mappings = true; # disable default mappings

      # dont_ask_default = true;

      # not in extraConfig field currently
      slime_python_ipython = 1;
      slime_input_pid = false;
      slime_suggest_default = true;
      slime_menu_config = false;
      slime_neovim_ignore_unlisted = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = ",cm";
      action.__raw = ''
        function ()
          local job_id = vim.b.terminal_job_id
          vim.print('job_id: ' .. job_id)
        end
      '';
      options = {
        desc = "[m]ark terminal job id";
      };
    }
    {
      mode = "n";
      key = ",cs";
      action.__raw = ''
        function()
          vim.fn.call('slime#config', {})
        end
      '';
      options = {
        desc = "[s]et terminal job id";
      };
    }
  ];

  # See https://github.com/jmbuhr/quarto-nvim-kickstarter/blob/main/lua/plugins/quarto.lua
  extraConfigLua = ''
    -- init
    vim.b['quarto_is_python_chunk'] = false
    Quarto_is_in_python_chunk = function()
      require('otter.tools.functions').is_otter_language_context 'python'
    end

    vim.cmd [[
    let g:slime_dispatch_ipython_pause = 100
    function SlimeOverride_EscapeText_quarto(text)
    call v:lua.Quarto_is_in_python_chunk()
    if exists('g:slime_python_ipython') && len(split(a:text,"\n")) > 1 && b:quarto_is_python_chunk && !(exists('b:quarto_is_r_mode') && b:quarto_is_r_mode)
    return ["%cpaste -q\n", g:slime_dispatch_ipython_pause, a:text, "--", "\n"]
    else
    if exists('b:quarto_is_r_mode') && b:quarto_is_r_mode && b:quarto_is_python_chunk
    return [a:text, "\n"]
    else
    return [a:text]
    end
    end
    endfunction
    ]]
  '';
}
