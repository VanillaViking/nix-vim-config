{
  # Import all your configuration modules here
  imports = [
    ./keymaps.nix
    ./lsp.nix
    ./navigation.nix
  ];

  config = {
    colorschemes.rose-pine.enable = true;

    options = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
    };
  };

}

