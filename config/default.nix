{self, pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./keymaps.nix
    ./lsp.nix
    ./navigation.nix
    ./colorscheme.nix
    ./statusline.nix
  ];

  config = {
    options = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      conceallevel = 2;
      signcolumn = "no";
    };

    extraPackages = [
      pkgs.xclip
      pkgs.ripgrep
      # required by rust analyzer
      pkgs.gccgo13
    ];
  };

}

