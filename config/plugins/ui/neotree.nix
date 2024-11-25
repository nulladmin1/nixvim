{
  plugins.neo-tree = {
    enable = true;
  };

  keymaps = [
    {
      mode = [
        "n"
      ];
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Open or Close Neotree";
      };
    }
  ];
}
