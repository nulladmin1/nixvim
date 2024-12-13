{
  # Configuration for the Leap plugin - general purpose motion plugin for Neovim
  # See source: https://github.com/ggandor/leap.nvim, options: https://nix-community.github.io/nixvim/search/?query=plugins.leap&option_scope=0&option=plugins.leap.enable
  plugins.leap = {
    enable = true;

    # Enable the default mappings for Leap (s, S, gs)
    addDefaultMappings = true;
  };
}
