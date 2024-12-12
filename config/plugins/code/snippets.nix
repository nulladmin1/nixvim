{
  # Enable snippets
  plugins = {
    # Friendly snippets is a collection of snippets in various programming languages
    # See source: https://github.com/rafamadriz/friendly-snippets, options: https://nix-community.github.io/nixvim/search/?query=plugins.friendly-snippets&option_scope=0&option=plugins.friendly-snippets.enable
    friendly-snippets.enable = true;

    # Snippet engine for neovim written in Lua
    # See source: https://github.com/L3MON4D3/LuaSnip, options: https://nix-community.github.io/nixvim/search/?query=plugins.luasnip&option_scope=0&option=plugins.luasnip.enable
    luasnip = {
      enable = true;

      settings = {
        # Enable the autosnippets feature
        enable_autosnippets = true;

        # Set the key to expand the snippet
        store_selection_keys = "<Tab>";
      };
    };
  };
}
