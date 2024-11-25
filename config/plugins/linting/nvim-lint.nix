{
  plugins = {
    lint = {
      enable = true;

      lintersByFt = {
        bash = [ "shellcheck" ];
        json = [ "jsonlint" ];
        markdown = [ "vale" ];
        rst = [ "vale" ];
        text = [ "vale" ];
        c = [ "cpplint" ];
        cpp = [ "cpplint" ];
        nix = [ "nix" "statix" "deadnix" ];
        go = [ "golangci-lint" ];
        lua = [ "selene" ];
        python = [ "ruff" ];
        javascript = [ "eslint_d" ];
        javascriptreact = [ "eslint_d" ];
        java = [ "checkstyle" ];
        rust = [ "clippy" ];
      };
    };
  };
}
