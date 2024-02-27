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

    extraConfigLuaPost = ''
      local nvim_lsp = require'nvim_lsp'
      nvim_lsp.clangd.setup{
        root_dir = nvim_lsp.util.root_pattern('.git');
      }
    '';
  };

}

