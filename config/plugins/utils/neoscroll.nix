{
  pligins.neoscoll = {
    settings = {
      easing_function = "quadratic";
      hide_cursor = false;
      stop_eof = true; # Stop at <EOF> when scrolling downwards
      respect_scrolloff = true; # Keep scrolling when the cursor reaches the scrolloff margin of the file
      cursor_scrolls_alone = true; # The cursor will keep on scrolling even if the window cannot scroll further
      easing = "linear"; # Default easing function
      performance_mode = false; # Disable "Performance Mode" on all buffers.
      mappings = [
        "<C-u>"
        "<C-d>"
        "<C-b>"
        "<C-f>"
        "<C-y>"
        "<C-e>"
        "zt"
        "zz"
        "zb"
      ];
    };
  };
}
