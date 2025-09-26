{...}: {
  # Unlike all other languages, using rustaceanvim to add a multitude of features for Rust
  # See source: https://github.com/mrcjkb/rustaceanvim, options: https://nix-community.github.io/nixvim/search/?query=plugins.rustaceanvim&option_scope=0&option=plugins.rustaceanvim.enable
  plugins.rustaceanvim = {
    enable = true;

    settings = {
      # Autoload the configuration for DAP
      dap.autoload_configurations = true;

      tools = {
        test_executor = "neotest";
      };

      # Server settings
      server = {
        default_settings = {
          # Rust Analyzer settings
          rust-analyzer = {
            # Enable all Cargo features
            cargo.features = "all";

            # Enable style lints
            diagnostics.styleLints.enable = true;

            # Use clippy to check for errors
            check = {
              command = "cargo-clippy";
              features = "all";
            };

            # Ignored by rust-analyzer
            files.excludeDirs = [
              ".cargo"
              ".direnv"
              ".envrc"
              ".git"
              "target"
            ];

            # Enlay hints settings
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

            # Discover the source for Rustc
            rustc.source = "discover";
          };
        };
      };
    };
  };
}
