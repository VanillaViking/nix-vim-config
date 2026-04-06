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
    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      tabstop = 4;
      conceallevel = 2;
      signcolumn = "no";
    };

    extraConfigLua = "vim.lsp.log.set_level 'error'";

    extraPackages = [
      pkgs.xclip
      pkgs.ripgrep
      # required by rust analyzer
      pkgs.gccgo13
    ];
  };

}

