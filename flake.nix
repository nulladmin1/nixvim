{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Fenix - for Rust
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixvim,
    nixpkgs,
    fenix,
    ...
  } @ inputs: let
    systems = ["x86_64-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin"];
    forEachSystem = nixpkgs.lib.genAttrs systems;
    pkgs = forEachSystem (system:
      import nixpkgs {
        inherit system;
        overlays = [fenix.overlays.default];
      });
    nixvimPkgs = forEachSystem (system: nixvim.legacyPackages.${system});

    # Rust toolchain w/ Fenix
    rust-toolchain =
      forEachSystem (system:
        pkgs.${system}.fenix.stable);
  in {
    packages = forEachSystem (system: {
      default = nixvimPkgs.${system}.makeNixvimWithModule {
        pkgs = pkgs.${system};
        module = ./config;
        extraSpecialArgs = {
          inherit inputs;
          rust-toolchain = rust-toolchain.${system};
        };
      };
    });

    formatter = forEachSystem (system: pkgs.${system}.alejandra);
  };
}
