{
  # Enable the nvim-treesitter plugin - implementation of Treesitter for Neovim
  # See source: https://github.com/nvim-treesitter/nvim-treesitter, options: https://nix-community.github.io/nixvim/search/?query=plugins.treesitter.&option_scope=0&option=plugins.treesitter.enable
  plugins.treesitter = {
    enable = true;

    # Settings for Nvim-Treesitter
    settings = {
      # Enable Treesitter:
      # indent
      indent.enable = true;

      # highlighting
      highlight.enable = true;

      # autopairs
      autopairs.enable = true;

      # folding
      folding.enable = true;

      # Enable auto_install for Treesitter languages
      auto_install = true;

      # Install all Treesitter languages
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
