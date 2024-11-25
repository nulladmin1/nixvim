{
  plugins.telescope = {
    enable = true;

    extensions = {
      frecency.enable = true;

      ui-select.enable = true;
    };

    keymaps = {
      "<leader>f" = {
        action = "find_files";
        options = {
          desc = "Telescope File Finder";
        };
      };
      "<leader>g" = {
        action = "git_files";
        options = {
          desc = "Telescope Git File Finder";
        };
      };
      "\\" = "live_grep";
    };
  };
}
