{
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        bashls.enable = true;
        cmake.enable = true;
        ccls.enable = true;
        cssls.enable = true;
        dartls = {
          enable = true;
          settings = {
            enableSnippets = true;
          };
        };
        emmet_ls.enable = true;
        eslint.enable = true;
        html.enable = true;
        htmx.enable = true;
        hyprls.enable = true;
        jdtls.enable = true;
        lua_ls.enable = true;
        nil_ls.enable = true;
        ts_ls.enable = true;
        marksman.enable = true;
        pyright.enable = true;
        gopls.enable = true;
        jsonls.enable = true;
        yamlls.enable = true;
      };
    };

    lsp-format = {
      enable = true;
    };
  };
}
