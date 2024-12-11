{...}: {
  # Editor options for Nixvim
  opts = {
    # Number of spaces that a <Tab> in the file counts for
    tabstop = 2;

    # Number of spaces to use for each step of (auto)indent
    shiftwidth = 2;

    # Number of spaces that a <Tab> counts for while performing editing operations
    softtabstop = 2;

    # Use spaces instead of tabs
    expandtab = true;

    # Copy indent from current line when starting a new line
    autoindent = true;
  };
}
