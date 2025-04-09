{self, pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./modules/keymaps.nix
    ./modules/lsp.nix
    ./modules/navigation.nix
    ./modules/usercommands.nix
    ./modules/colorscheme.nix
    ./modules/statusline.nix
  ];

  config = {
    #autoCmd = [
    #  {
    #    event = [ "BufWritePost" ];
    #    pattern = [ "*.typ" ];
    #    command = ":!typst compile %";
    #  }
    #];

    options = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      conceallevel = 2;
      signcolumn = "no";
    };

    extraConfigLua = ''
local id, err = vim.lsp.start_client({
  name = 'nvim-discord-presence',
  cmd = {'/home/vanilla/projects/rust/nvim-discord-rich-presence/target/debug/neopresence'},
 })

vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = {"*"},
  callback = function()
    vim.lsp.buf_attach_client(0, id) 
  end
})
    '';
  
    extraPackages = [
      pkgs.xclip
      pkgs.ripgrep
      # required by rust analyzer
      pkgs.gccgo13
    ];
  };

}

