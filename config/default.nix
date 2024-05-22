{self, pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./modules/keymaps.nix
    ./modules/lsp.nix
    ./modules/navigation.nix
    ./modules/colorscheme.nix
    ./modules/statusline.nix
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

