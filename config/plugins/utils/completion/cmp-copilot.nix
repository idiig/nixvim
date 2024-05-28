{
  # auto completion with copilot
  plugins.copilot-cmp = {
    enable = true;
  };

  plugins.copilot-lua = {
    enable = true;
    suggestion = {enabled = false;};
    panel = {enabled = false;};
  };

  extraConfigLua = ''
    require('plenary').setup({})
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  '';
}
