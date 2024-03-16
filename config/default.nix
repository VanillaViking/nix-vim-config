{self, pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./keymaps.nix
    ./lsp.nix
    ./navigation.nix
    ./usercommands.nix
    ./obsidian.nix
    ./colorscheme.nix
    ./statusline.nix
  ];

  config = {
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
  
    extraPackages = [
      pkgs.xclip
      pkgs.ripgrep
    ];
  };

}

