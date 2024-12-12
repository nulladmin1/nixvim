{
  pkgs,
  lib,
  ...
}: {
  # Nvim-Dap is an implementation of the Debug Adapter Protocol for Neovim
  plugins = {
    # Enable DAP integration with cmp
    cmp-dap.enable = true;

    # Enable nvim-dap
    # See source: https://github.com/mfussenegger/nvim-dap, options: https://nix-community.github.io/nixvim/search/?query=plugins.dap&option_scope=0&option=plugins.dap.enable
    dap = {
      enable = true;

      # Builtin extensions for nvim-dap
      extensions = {
        # Python debugging support
        # See source: https://github.com/mfussenegger/nvim-dap-python, options: https://nix-community.github.io/nixvim/search/?query=plugins.dap&option_scope=0&option=plugins.dap.extensions.dap-python.enable
        dap-python.enable = true;

        # Go debugging support with delve
        # See source: https://github.com/leoluz/nvim-dap-go, options: https://nix-community.github.io/nixvim/search/?query=plugins.dap&option_scope=0&option=plugins.dap.extensions.dap-go.enable
        dap-go = {
          enable = true;
          delve = {
            path = "${pkgs.delve}/bin/dlv";
          };
        };

        # Enable the Dap-UI within Neovim
        # See source: https://github.com/rcarriga/nvim-dap-ui, options: https://nix-community.github.io/nixvim/search/?query=plugins.dap&option_scope=0&option=plugins.dap.extensions.dap-ui.enable
        dap-ui = {
          enable = true;
          floating.mappings = {
            # Close floating window using the escape key or q
            close = [
              "<ESC>"
              "q"
            ];
          };
        };
      };

      # Supported adapters for nvim-dap
      adapters = {
        executables = {
        };

        # Adapter servers for nvim-dap
        servers = {
          # CodeLLDB adapter server for C, C++, and Rust
          codelldb = {
            executable = {
              # Needs VSCode extension to be installed
              command = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
              # Port to use for the adapter server
              args = [
                "--port"
                "13000"
              ];
            };
            port = 13000;
          };
        };
      };

      # Configurations for nvim-dap
      configurations = let
        # CodeLLDB configuration for C, C++, and Rust
        codelldb-configuration = {
          name = "Launch CodeLLDB";
          type = "codelldb";
          request = "launch";

          # Ask for the path to the executable
          program.__raw = ''
            function()
              return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end
          '';
          cwd = ''''${workspaceFolder}'';
          stopOnEntry = false;
          runInTerminal = true;
        };
      in {
        # Configurations for different languages
        c = [
          codelldb-configuration
        ];
        cpp = [
          codelldb-configuration
        ];
        rust = [
          codelldb-configuration
        ];
      };

      # Signs for nvim-dap (from nerd-fonts)
      signs = {
        dapBreakpoint = {
          text = "";
          texthl = "DapBreakpoint";
        };
        dapBreakpointCondition = {
          text = "";
          texthl = "DapBreakpointCondition";
        };
        dapLogPoint = {
          text = "";
          texthl = "DapLogPoint";
        };
      };
    };
  };

  # Keymaps for nvim-dap
  keymaps = [
    # To toggle a breakpoint
    {
      mode = "n";
      key = "<leader>db";
      action = ":DapToggleBreakpoint<cr>";
      options.desc = "Toggle Breakpoint";
    }

    # To set a breakpoint condition
    {
      mode = "n";
      key = "<leader>dB";
      action = "
   <cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>";
      options.desc = "Breakpoint Condition";
    }

    # To continue debugging
    {
      mode = "n";
      key = "<leader>dc";
      action = ":DapContinue<cr>";
      options.desc = "Continue";
    }

    # To step into the code
    {
      mode = "n";
      key = "<leader>di";
      action = ":DapStepInto<cr>";
      options.desc = "Step into";
    }

    # To step out of the code
    {
      mode = "n";
      key = "<leader>do";
      action = ":DapStepOut<cr>";
      options.desc = "Step Out";
    }

    # To step over the code
    {
      mode = "n";
      key = "<leader>dO";
      action = ":DapStepOver<cr>";
      options.desc = "Step Over";
    }

    # Pause the debugger
    {
      mode = "n";
      key = "<leader>dp";
      action = "<cmd>lua require('dap').pause()<cr>";
      options.desc = "Pause";
    }

    # Terminates the debugger
    {
      mode = "n";
      key = "<leader>dt";
      action = ":DapTerminate<cr>";
      options.desc = "Terminate";
    }

    # Toggle DapUI
    {
      mode = "n";
      key = "<leader>d";
      action = "<cmd>lua require('dapui').toggle()";
      options.desc = "Toggle Debugger UI";
    }
  ];
}
