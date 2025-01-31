{
  # Enable GitHub Copilot (free using GitHub Education)
  plugins = {
    # Enable Copilot using copilot.lua (replacement for copilot.vim)
    # See source: https://github.com/zbirenbaum/copilot.lua
    copilot-lua = {
      enable = true;

      settings = {
        # These 2 needed to be disabled to use with copilot-cmp
        suggestion.enabled = false;
        panel.enabled = false;
      };
    };

    # CMP Source for Copilot
    # See source: https://github.com/zbirenbaum/copilot-cmp
    copilot-cmp = {
      enable = true;
    };
  };
}
