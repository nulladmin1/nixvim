{pkgs, ...}: {
  plugins = {
    lint = {
      enable = true;

      linters = {
        clippy = {
          cmd = "${pkgs.clippy}/bin/clippy";
        };
        cpplint = {
          cmd = "${pkgs.cpplint}/bin/cppint";
        };
        vale = {
          cmd = "${pkgs.vale}/bin/vale";
        };
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
      };

      lintersByFt = {
        bash = ["shellcheck"];
        json = ["jsonlint"];
        markdown = ["vale"];
        rst = ["vale"];
        text = ["vale"];
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
