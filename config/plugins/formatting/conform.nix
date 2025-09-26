{pkgs, ...}: {
  # Enable Conform.nvim - a code formatter for Neovim (alternative to Null-ls)
  # See source: https://github.com/stevearc/conform.nvim, options: https://nix-community.github.io/nixvim/search/?query=plugins.conform&option_scope=0&option=plugins.conform-nvim.enable
  plugins = {
    conform-nvim = {
      enable = true;

      # Optional settings for Conform
      settings = {
        format_on_save = {
          # Timeout for formatting on save
          timeout_ms = 500;

          # Use lsp_format as a fallback if no formatter is available for the filetype
          lsp_format = "fallback";
        };

        # Formatter packages/commands
        formatters = {
          clang-format = {
            command = "${pkgs.libclang}/bin/clang-format";
          };
          shellcheck = {
            command = "${pkgs.shellcheck}/bin/shellcheck";
          };
          rustfmt = {
            command = "rustfmt";
          };
          prettierd = {
            command = "${pkgs.prettierd}/bin/prettierd";
          };
          stylua = {
            command = "${pkgs.stylua}/bin/stylua";
          };
          alejandra = {
            command = "${pkgs.alejandra}/bin/alejandra";
          };
          gofmt = {
            command = "${pkgs.go}/bin/gofmt";
          };
          cmake_format = {
            command = "${pkgs.cmake-format}/bin/cmake-format";
          };
          ruff_format = {
            command = "${pkgs.ruff}/bin/ruff";
          };
          google-java-format = {
            command = "${pkgs.google-java-format}/bin/google-java-format";
          };
        };

        # Map of formatters by filetype
        formatters_by_ft = {
          bash = ["shellcheck"];
          c = ["clang-format"];
          cpp = ["clang-format"];
          rust = ["rustfmt"];
          lua = ["stylua"];
          nix = ["alejandra"];
          go = ["gofmt"];
          cmake = ["cmake_format"];
          python = ["ruff_format"];
          java = ["google-java-format"];
          markdown = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          json = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          html = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          css = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          javascript = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          javascriptreact = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          typescript = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          typescriptreact = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
        };
      };
    };
  };

  # keymaps = [
  #   {
  #     mode = "n";
  #     key = "<leader>f";
  #     action = ''        <cmd>lua require('conform').format({
  #                       lsp_fallback = true,
  #                     })<cr>'';
  #     options = {
  #       silent = true;
  #       desc = "Format Buffer";
  #     };
  #   }
  # ];
}
