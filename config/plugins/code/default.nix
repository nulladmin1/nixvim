{
  imports = [
    ./cmp.nix
    ./snippets.nix
    ./gitignore.nix
  ];

  plugins = {
    # Auto pair things like parentheses
    nvim-autopairs.enable = true;

    # Comments
    ts-comments.enable = true;
  };
}
