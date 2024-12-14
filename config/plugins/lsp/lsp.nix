{
  plugins = {
    # Enable the language server protocol
    # See source: https://neovim.io/doc/user/lsp.html, options: https://nix-community.github.io/nixvim/search/?query=plugins.lsp&option_scope=0&option=plugins.lsp.enable
    lsp = {
      enable = true;

      # Enable inlay hints
      inlayHints = true;

      # Servers for LSP
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

        # Replaced by Rustaceanvim (see ../language_specific/rust.nix)
        #rust_analyzer = {
        #  enable = true;
        #  installCargo = true;
        #  installRustc = true;
        #};
        yamlls.enable = true;
      };

      # Keymaps for LSP
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

          gr = {
            action = "references";
            desc = "GoTo References";
          };

          "<leader>ca" = {
            action = "code_action";
            desc = "Code Actions";
          };
        };
      };
    };

    # Also format using LSP
    lsp-format = {
      enable = true;
    };
  };
}
