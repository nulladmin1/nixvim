{pkgs, ...}: {
  # Add SmearCursors in extraPlugins (not in Nixpkgs (yet))
  # Smear-Cursors.nvim adds a cool effect on the cursor in *Vim
  # See source: https://github.com/sphamba/smear-cursor.nvim, options: https://github.com/sphamba/smear-cursor.nvim
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      pname = "smear-cursor.nvim";
      version = "0.3.3";
      src = pkgs.fetchFromGitHub {
        owner = "sphamba";
        repo = "smear-cursor.nvim";
        rev = "e6de22fc4efbf7b2703317115e9c288d00e02f60";
        sha256 = "05j8yb7whr6fa8lsar9nc6bc0gkzqr6829ypa1xb5y7wk7wlc160";
      };
      meta.homepage = "https://github.com/sphamba/smear-cursor.nvim/";
    })
  ];

  extraConfigLua = ''
    require("smear_cursor").setup({
      legacy_computing_symbols_support = true,
    })
  '';

  keymaps = [
    {
      mode = [
        "n"
      ];
      key = "<leader>sc";
      action = "<cmd>SmearCursorToggle";
      options = {
        desc = "Toggle Smear Cursor";
      };
    }
  ];
}
