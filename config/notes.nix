{self, pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./modules/keymaps.nix
    ./modules/navigation.nix
    ./modules/usercommands.nix
    ./modules/obsidian.nix
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
    ];
  };

}

