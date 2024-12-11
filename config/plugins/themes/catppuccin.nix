{
  # Enable the Catppuccin colorscheme (one of the most comprehensive and popular ones)
  colorschemes.catppuccin = {
    enable = true;

    settings = {
      # Enable transparent background for Nixvim in Catppuccin theme
      transparent_background = true;

      # Set the catppuccin flavor (this is the darkest one)
      flavour = "mocha";

      # Different integrations for Catppuccin. See https://github.com/catppuccin/nvim for the list of integrations (not Nixvim specific though)
      integrations = {
        # For Alpha.nvim (../editor/alpha.nix)
        alpha = true;

        # For completions (../code/cmp.nix)
        cmp = true;

        # For the Debugger + UI (../debugging/nvim-dap.nix)
        dap = {
          enabled = true;
          enable_ui = true;
        };

        # For Neotree (../ui/neotree.nix)
        neotree = true;

        # For Treesitter (../editor/treesitter.nix)
        treesitter = true;

        # For Telescope (../editor/telescope.nix)
        telescope.enabled = true;

        # For WhichKey (../editor/whichkey.nix)
        which_key = true;
      };
    };
  };
}
