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

    autoCmd = [
      {
        event = [ "BufWritePost" ];
        pattern = [ "*.typ" ];
        command = ":!typst compile %";
      }
    ];

    options = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      conceallevel = 2;
    };

  };

}

