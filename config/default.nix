{
  # Import all your configuration modules here
  imports = [
    ./keymaps.nix
    ./lsp.nix
    ./navigation.nix
    ./usercommands.nix
    ./obsidian.nix
  ];

  config = {
    colorschemes.rose-pine.enable = true;

    options = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      conceallevel = 2;
    };

  };

}

