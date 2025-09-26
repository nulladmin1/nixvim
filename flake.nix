{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixvim,
    nixpkgs,
    ...
  } @ inputs: let
    systems = ["x86_64-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin"];
    forEachSystem = nixpkgs.lib.genAttrs systems;
    pkgs = forEachSystem (system:
      import nixpkgs {
        inherit system;
      });
    nixvimPkgs = forEachSystem (system: nixvim.legacyPackages.${system});
  in {
    packages = forEachSystem (system: {
      default = nixvimPkgs.${system}.makeNixvimWithModule {
        pkgs = pkgs.${system};
        module = ./config;
        extraSpecialArgs = {
          inherit inputs;
        };
      };
    });

    formatter = forEachSystem (system: pkgs.${system}.alejandra);
  };
}
