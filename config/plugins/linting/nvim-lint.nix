{pkgs, ...}: {
  plugins = {
    lint = {
      enable = true;

      linters = {
        shellcheck = {
          cmd = "${pkgs.shellcheck}/bin/shellcheck";
        };
        clippy = {
          cmd = "${pkgs.clippy}/bin/cargo-clippy";
        };
        cpplint = {
          cmd = "${pkgs.cpplint}/bin/cppint";
        };
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
