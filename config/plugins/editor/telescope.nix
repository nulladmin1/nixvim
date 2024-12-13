{pkgs, ...}: {
  # Enable Telescope.nvim plugin
  # See source: https://github.com/nvim-telescope/telescope.nvim, options: https://nix-community.github.io/nixvim/search/?query=plugins.telescope&option_scope=0&option=plugins.telescope.enable
  plugins.telescope = {
    enable = true;

    # Extensions for Telescope
    extensions = {
      # Ranks search results by recency and frequency
      # See source: https://github.com/nvim-telescope/telescope-frecency.nvim, options: https://nix-community.github.io/nixvim/search/?query=plugins.telescope.extensions.frecency&option_scope=0&option=plugins.telescope.extensions.frecency.enable
      frecency.enable = true;

      # Vim.ui.select integration with telescope
      # See source: https://github.com/nvim-telescope/telescope-ui-select.nvim, options:https://nix-community.github.io/nixvim/search/?query=plugins.telescope.extensions.ui-select&option_scope=0&option=plugins.telescope.extensions.ui-select.enable
      ui-select.enable = true;
    };

    # Keymaps for Telescope
    keymaps = {
      # Use <leader>ff to find files
      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "Telescope File Finder";
        };
      };

      # Use <leader>fg to find Git files
      "<leader>fg" = {
        action = "git_files";
        options = {
          desc = "Telescope Git File Finder";
        };
      };

      # Live grep using Ripgrep
      "\\" = "live_grep";

      # Shows keymaps using Telescope
      "<leader>fb" = {
        action = "keymaps";
        options = {
          desc = "Telescope Keymaps";
        };
      };
    };
  };

  # Dependencies for live grep in Telescope
  extraPackages = with pkgs; [
    ripgrep
  ];
}
