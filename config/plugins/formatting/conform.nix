{pkgs, ...}: {
  plugins = {
    conform-nvim = {
      enable = true;
      settings = {
        format_on_save = {
          timeout_ms = 500;
          lsp_format = "fallback";
        };

        formatters = {
          clang-format = {
            command = "${pkgs.libclang}/bin/clang-format";
          };
          shellcheck = {
            command = "${pkgs.shellcheck}/bin/shellcheck";
          };
          rustfmt = {
            command = "${pkgs.rustfmt}/bin/rustfmt";
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
