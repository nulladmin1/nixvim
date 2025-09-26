{pkgs, ...}: {
  plugins = {
    # Linting with nvim-lint
    # See source: https://github.com/mfussenegger/nvim-lint, options: https://nix-community.github.io/nixvim/search/?query=plugins.lint&option_scope=0&option=plugins.lint.enable
    lint = {
      enable = true;

      # Commands for linters
      linters = {
        shellcheck = {
          cmd = "${pkgs.shellcheck}/bin/shellcheck";
        };
        clippy = {
          cmd = "cargo-clippy";
        };
        cpplint = {
          cmd = "${pkgs.cpplint}/bin/cpplint";
        };
        # Disable due to complexity and errors
        #vale = {
        #  cmd = "${pkgs.vale}/bin/vale";
        #};
        golangcilint = {
          cmd = "${pkgs.golangci-lint}/bin/golangci-lint";
        };
        selene = {
          cmd = "${pkgs.selene}/bin/selene";
        };
        ruff = {
          cmd = "${pkgs.ruff}/bin/ruff";
        };
        eslint_d = {
          cmd = "${pkgs.eslint_d}/bin/eslint_d";
        };
        checkstyle = {
          cmd = "${pkgs.checkstyle}/bin/checkstyle";
        };
        statix = {
          cmd = "${pkgs.statix}/bin/statix";
        };
        cmakelint = {
          cmd = "${pkgs.cmake-lint}/bin/cmakelint";
        };
      };

      # Map linters to file types
      lintersByFt = {
        bash = ["shellcheck"];
        json = ["jsonlint"];
        #markdown = ["vale"];
        #rst = ["vale"];
        #text = ["vale"];
        c = ["cpplint"];
        cpp = ["cpplint"];
        go = ["golangcilint"];
        lua = ["selene"];
        python = ["ruff"];
        javascript = ["eslint_d"];
        javascriptreact = ["eslint_d"];
        java = ["checkstyle"];
        rust = ["clippy"];
        cmake = ["cmakelint"];
        nix = ["statix"];
      };
    };
  };
}
