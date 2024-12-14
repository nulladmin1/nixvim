{
  # Enable neotest - a plugin that provides a test runner for Neovim
  # See source: https://github.com/nvim-neotest/neotest, options: https://nix-community.github.io/nixvim/search/?query=plugins.neotest&option_scope=0&option=plugins.neotest.enable
  plugins.neotest = {
    enable = true;

    # Adapters to use for running tests
    adapters = {
      bash.enable = true;
      golang.enable = true;
      gradle.enable = true;
      gtest.enable = true;
      jest.enable = true;
      python.enable = true;

      # Use Rustaceanvim instead of neotest-rust (../language_specific/rust.nix)
      rust.enable = false;
    };
  };
  # Keymaps for neotest
  keymaps = [
    {
      mode = "n";
      key = "<leader>tn";
      action = "<CMD>NeotestRun<CR>";
      options.desc = "Run all tests";
    }
    {
      mode = "n";
      key = "<leader>dn";
      action.__raw = ''
        function()
          require("neotest").run.run({strategy = "dap"})
        end
      '';
      options.desc = "Neotest Debug";
    }
    {
      mode = "n";
      key = "<leader>na";
      action = "<CMD>Neotest attach<CR>";
      options.desc = "Attach Neotest";
    }
    {
      mode = "n";
      key = "<leader>nd";
      action.__raw = ''
        function()
          require("neotest").run.run({strategy = "dap"})
        end
      '';
      options.desc = "Debug";
    }
  ];
}
