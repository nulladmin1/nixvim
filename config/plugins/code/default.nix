{
  imports = [
    ./cmp.nix
    ./snippets.nix
    ./gitignore.nix
    ./copilot-cmp.nix
  ];

  plugins = {
    # Auto pair things like parentheses
    nvim-autopairs.enable = true;

    # Comments
    ts-comments.enable = true;
  };
}
