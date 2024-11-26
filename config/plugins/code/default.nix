{
  imports = [
    ./cmp.nix
    ./snippets.nix
  ];

  plugins = {
    # Auto pair things like parentheses
    nvim-autopairs.enable = true;

    # Comments
    ts-comments.enable = true;
  };
}
