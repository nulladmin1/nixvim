{
  # Enable use of system clipboards
  clipboard = {
    # Use system clipboard
    register = "unnamedplus";

    # Enable clipboard management in Wayland using wl-copy
    providers.wl-copy.enable = true;
  };

  # Highlight extra whitespace with a red background
  highlight.ExtraWhitespace.bg = "red";
}
