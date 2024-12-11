{
  # Completions powered by Nvim-cmp
  plugins = {
    # Enable nvim-cmp - a completion engine for Neovim.
    # See source: https://github.com/hrsh7th/nvim-cmp, and options: https://nix-community.github.io/nixvim/search/?query=plugins.cmp.
    cmp = {
      enable = true;

      settings = {
        # Add snippets from luasnip (./snippets.nix)
        snippet.expand = "luasnip";

        # Made windows rounded
        window = {
          documentation.border = "rounded";
          completion.border = "rounded";
        };

        # Keymaps for cmp (Attrsets of keybinds: lua code)
        mapping = {
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";

          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<C-e>" = "cmp.mapping.close()";
        };

        # The sources for cmp's completions
        sources = [
          # Enable for luasnip
          {
            name = "luasnip";
          }

          # Enable Git cmp source
          {
            name = "git";
          }

          # Enable Emoji cmp source (get's kinda annoying)
          {
            name = "emoji";
          }

          # Enable path as a cmp source
          {
            name = "path";
          }

          # Enable completions from the current buffer
          {
            name = "buffer";
          }

          # Enable completions from LSP
          {
            name = "nvim_lsp";
          }

          # Enable completions from Copilot (./copilot-cmp.nix)
          {
            name = "copilot";
          }
        ];
      };
    };

    # Basically all the sources from above

    cmp-nvim-lsp = {
      enable = true;
    };

    cmp-buffer = {
      enable = true;
    };

    cmp-path = {
      enable = true;
    };

    cmp_luasnip = {
      enable = true;
    };

    cmp-cmdline = {
      enable = true;
    };
  };
}
