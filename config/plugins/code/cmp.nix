{
  plugins = {
    cmp = {
      enable = true;
      settings = {
        snippet.expand = "luasnip";

        window = {
          documentation.border = "rounded";
          completion.border = "rounded";
        };

        mapping = {
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        };
        sources = [
          {
            name = "luasnip";
          }
          {
            name = "git";
          }
          {
            name = "emoji";
          }
          {
            name = "path";
          }
          {
            name = "buffer";
          }
          {
            name = "nvim_lsp";
          }
        ];
      };
    };

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
