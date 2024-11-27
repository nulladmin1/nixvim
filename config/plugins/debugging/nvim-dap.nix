{
  pkgs,
  lib,
  ...
}: {
  plugins = {
    cmp-dap.enable = true;

    dap = {
      enable = true;

      extensions = {

        dap-go = {
          enable = true;
          delve = {
            path = "${pkgs.delve}/bin/dlv";
          };
        };

        dap-ui = {
          enable = true;
          floating.mappings = {
            close = [
              "<ESC>"
              "q"
            ];
          };
        };
      };

      adapters = {
        executables = {
        };
        servers = {
      };

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

  keymaps = [
    {
      mode = "n";
      key = "<leader>db";
      action = ":DapToggleBreakpoint<cr>";
      options.desc = "Toggle Breakpoint";
    }
    {
      mode = "n";
      key = "<leader>dB";
      action = "
   <cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>";
      options.desc = "Breakpoint Condition";
    }
    {
      mode = "n";
      key = "<leader>dc";
      action = ":DapContinue<cr>";
      options.desc = "Continue";
    }
    {
      mode = "n";
      key = "<leader>di";
      action = ":DapStepInto<cr>";
      options.desc = "Step into";
    }
    {
      mode = "n";
      key = "<leader>do";
      action = ":DapStepOut<cr>";
      options.desc = "Step Out";
    }
    {
      mode = "n";
      key = "<leader>dO";
      action = ":DapStepOver<cr>";
      options.desc = "Step Over";
    }
    {
      mode = "n";
      key = "<leader>dp";
      action = "<cmd>lua require('dap').pause()<cr>";
      options.desc = "Pause";
    }
    {
      mode = "n";
      key = "<leader>dt";
      action = ":DapTerminate<cr>";
      options.desc = "Terminate";
    }
    {
      mode = "n";
      key = "<leader>d";
      action = "<cmd>lua require('dapui').toggle()";
      options.desc = "Toggle Debugger UI";
    }
  ];
}
