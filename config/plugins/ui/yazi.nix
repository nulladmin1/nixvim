{
  plugins.yazi = {
    enable = true;

    settings = {
      enable_mouse_support = true;
    };
  };

  keymaps = [
    {
      mode = [
        "n"
      ];
      key = "<leader>y";
      action = "<cmd>Yazi<cr>";
      options = {
        desc = "Open Yazi.nvim in the current file";
      };
    }
  ];
}
