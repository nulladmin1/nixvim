{pkgs, ...}: {
  plugins.markdown-preview = {
    enable = true;
    settings = {
      browser = "brave";
      echo_preview_url = 1;
      theme = "dark";
      port = "69420";
      markdown_css = let
        repo = pkgs.fetchFromGitHub {
          owner = "sindresorhus";
          repo = "github-markdown-css";
          rev = "e771b613e93f868afd7ce2cdba2a2c7b6c649416";
          hash = "sha256-woqqsN9WaB476coL32tvrzBN7N2mO6ShgUITZYSSvdU=";
        };
      in "${repo}/github-markdown.css";
      preview_options = {
        content_editable = 0;
      };
    };
  };

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
