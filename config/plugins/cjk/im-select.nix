{
  pkgs,
  lib,
  ...
}: let
  imSelectRepo = {
    owner = "keaising";
    repo = "im-select.nvim";
    rev = "ca1aebb8f5c8a0342ae99a0fcc8ebc49b5f2201e";
    hash = "sha256-tyVGbfRoshuuUWkFlQa6YvoJJ4HMLmG5p8Y0EsP1Zig=";
  };

in {

  extraPlugins = with pkgs.vimUtils; [

    # coplilot
    (buildVimPlugin {
      pname = "im-select";
      version = "2024-05-29";
      src = pkgs.fetchFromGitHub imSelectRepo;
      meta = {
        description = "Switch Input Method automatically depends on NeoVim's edit mode.";
        homepage = "https://github.com/keaising/im-select.nvim";
        license = lib.licenses.mit;
      };
    })
  ];

  extraConfigLua = ''
    require("im_select").setup({
        -- IM will be set to `default_im_select` in `normal` mode
        -- For Windows/WSL, default: "1033", aka: English US Keyboard
        -- For macOS, default: "com.apple.keylayout.ABC", aka: US
        -- For Linux, default:
        --               "keyboard-us" for Fcitx5
        --               "1" for Fcitx
        --               "xkb:us::eng" for ibus
        -- You can use `im-select` or `fcitx5-remote -n` to get the IM's name
        -- default_im_select  = "com.apple.keylayout.ABC",
        -- default_im_select  = "keyboard-us",

        -- Can be binary's name or binary's full path,
        -- e.g. 'im-select' or '/usr/local/bin/im-select'
        -- For Windows/WSL, default: "im-select.exe"
        -- For macOS, default: "im-select"
        -- For Linux, default: "fcitx5-remote" or "fcitx-remote" or "ibus"
        -- default_command = 'im-select.exe',
        -- default_command = 'fcitx5-remote',

        -- Restore the default input method state when the following events are triggered
        set_default_events = { "VimEnter", "FocusGained", "InsertLeave", "CmdlineLeave" },

        -- Restore the previous used input method state when the following events
        -- are triggered, if you don't want to restore previous used im in Insert mode,
        -- e.g. deprecated `disable_auto_restore = 1`, just let it empty
        -- as `set_previous_events = {}`
        -- set_previous_events = { "InsertEnter" },

        -- Show notification about how to install executable binary when binary missed
        keep_quiet_on_no_binary = false,

        -- Async run `default_command` to switch IM or not
        async_switch_im = true,
    })
  '';
}
