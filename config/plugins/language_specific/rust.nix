{
  plugins.rustaceanvim = {
    enable = true;

    settings = {
      dap.autoload_configurations = true;

      server = {
        default_settings = {
          rust-analyzer = {
            cargo.features = "all";

            diagnostics.styleLints.enable = true;

            check = {
              command = "clippy";
              features = "all";
            };

            files.excludeDirs = [
              ".cargo"
              ".direnv"
              ".envrc"
              ".git"
              "target"
            ];

            inlayHints = {
              bindingModeHints.enable = true;
              closureStyle = "rust_analyzer";
              closureReturnTypeHints.enable = "always";
              discriminantHints.enable = "always";
              expressionAdjustmentHints.enable = "always";
              implicitDrops.enable = true;
              lifetimeElisionHints.enable = "always";
              rangeExclusiveHints.enable = true;
            };

            rustc.source = "discover";
          };
        };
      };
    };
  };
}
