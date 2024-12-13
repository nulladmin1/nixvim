{pkgs, ...}: {
  # Notion.nvim - Access the Notion api in Neovim
  # See source: https://github.com/Al0den/notion.nvim

  # Because this plugins isn't available in Nixpkgs and as an option in Nixvim,
  # we need to build it manually using this native nix build helper (prefetched using nix-prefetch-github)
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "notion";
      src = pkgs.fetchFromGitHub {
        owner = "Al0den";
        repo = "notion.nvim";
        rev = "a72d555da8a09ec92323181ac7f2c5c3b92658ee";
        hash = "sha256-8H+Y8xLat7XnWFMGErtkvJj1WfMAf07/qBGT7nrIG6I=";
      };
    })
  ];

  # Configure the plugin (stolen from the README Defaults)
  extraConfigLua = ''
    require"notion".setup {
    }
  '';

  # Add keymaps to open Notion
  keymaps = [
    {
      mode = "n";
      key = "<leader>no";
      action = "<cmd>lua require'notion'.openMenu()<CR>";
    }
  ];
}
