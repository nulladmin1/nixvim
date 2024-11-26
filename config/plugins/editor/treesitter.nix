{
  plugins.treesitter = {
    enable = true;

    settings = {
      indent.enable = true;
      highlight.enable = true;
      autopairs.enable = true;
      folding.enable = true;

      auto_install = true;

      ensure_installed = "all"; # [
      # "all"
      #  "bash"
      #  "c"
      #  "diff"
      #  "html"
      #  "javascript"
      #  "java"
      #  "jsdoc"
      #  "json"
      #  "jsonc"
      #  "lua"
      #  "luadoc"
      #  "luap"
      #  "nix"
      #  "markdown"
      #  "markdown_inline"
      #  "printf"
      #  "python"
      #  "query"
      #  "regex"
      #  "rust"
      #  "toml"
      #  "tsx"
      #  "typescript"
      #  "tsx"
      #  "vim"
      #  "vimdoc"
      #  "xml"
      #  "toml"
      #  "yaml"
      # ];
    };
  };
}
