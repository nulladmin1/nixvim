{
  # Enable the Copilot Chat plugin
  # See source: https://github.com/CopilotC-Nvim/CopilotChat.nvim, options: https://nix-community.github.io/nixvim/search/?query=plugins.copilot-chat&option_scope=0&option=plugins.copilot-chat.enable
  plugins.copilot-chat = {
    enable = true;
  };

  # Keymaps for Copilot Chat
  keymaps = [
    # Toggle the Copilot Chat window
    {
      key = "<leader>ct";
      action = "<CMD>CopilotChatToggle<CR>";
      options.desc = "Copilot Chat Window Toggle";
    }

    # Stop current Copilot output
    {
      key = "<leader>cs";
      action = "<CMD>CopilotChatStop<CR>";
      options.desc = "Stop current Copilot output";
    }

    # Review the selected code
    {
      key = "<leader>cr";
      action = "<CMD>CopilotChatReview<CR>";
      options.desc = "Review the selected code";
    }

    # Let Copilot explain the selected code
    {
      key = "<leader>ce";
      action = "<CMD>CopilotChatExplain<CR>";
      options.desc = "Give an explanation for the selected code";
    }

    # Add documentation for the selection
    {
      key = "<leader>cd";
      action = "<CMD>CopilotChatDocs<CR>";
      options.desc = "Add documentation for the selection";
    }

    # Add tests for my code
    {
      key = "<leader>cp";
      action = "<CMD>CopilotChatTests<CR>";
      options.desc = "Add tests for my code";
    }
  ];
}
