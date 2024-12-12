{
  # Enable gitignore.nvim
  # See source: https://github.com/wintermute-cell/gitignore.nvim, options: https://nix-community.github.io/nixvim/search/?query=plugins.gitignore&option_scope=0&option=plugins.gitignore.enable
  plugins.gitignore = {
    enable = true;

    # Set keybinding <leader>gi to generate gitignore
    keymap = {
      key = "<leader>gi";
      mode = ["n"];
      options.desc = "Generate Gitignore";
    };
  };
}
