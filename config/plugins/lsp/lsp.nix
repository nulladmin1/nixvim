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
        gopls.enable = true;
        html.enable = true;
        htmx.enable = true;
        hyprls.enable = true;
        jdtls.enable = true;
        jsonls.enable = true;
        lua_ls.enable = true;
        nil_ls.enable = true;
        ts_ls.enable = true;
        marksman.enable = true;
        pyright.enable = true;
        ruff.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
        };
        yamlls.enable = true;
      };

      keymaps = {
        lspBuf = {
          K = {
            action = "hover";
            desc = "Hover";
          };

          gd = {
            action = "definition";
            desc = "GoTo Definition";
          };

          "<leader>ca" = {
            action = "code_action";
            desc = "Code Actions";
          };
        };
      };
    };

    lsp-format = {
      enable = true;
    };
  };
}
