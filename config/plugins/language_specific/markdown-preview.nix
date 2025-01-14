{pkgs, ...}: {
  # Enable the markdown-preview plugin
  # See source: https://github.com/iamcco/markdown-preview.nvim, options: https://nix-community.github.io/nixvim/search/?query=plugins.markdown-preview&option_scope=0&option=plugins.markdown-preview.enable
  plugins.markdown-preview = {
    enable = true;

    # Optional settings for markdown-preview
    settings = {
      # Browser to use for preview
      browser = "brave";

      # Enable echo preview url to print the preview url
      echo_preview_url = 1;

      # Theme for the preview
      theme = "dark";

      # Port for the preview server
      port = "42069";

      # Use the github-markdown-css theme for the preview
      markdown_css = let
        github-markdown-css = pkgs.fetchFromGitHub {
          owner = "sindresorhus";
          repo = "github-markdown-css";
          rev = "e771b613e93f868afd7ce2cdba2a2c7b6c649416";
          hash = "sha256-woqqsN9WaB476coL32tvrzBN7N2mO6ShgUITZYSSvdU=";
        };
      in "${github-markdown-css}/github-markdown.css";

      # Disable editing the preview content
      preview_options = {
        content_editable = 0;
      };
    };
  };

  # Add a keymap to open the markdown preview
  keymaps = [
    {
      mode = "n";
      key = "<leader>mp";
      action = "<cmd>MarkdownPreview<cr>";
      options = {
        desc = "Toggle Markdown Preview";
      };
    }
  ];
}
