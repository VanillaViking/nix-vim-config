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
local client = vim.lsp.start({
  name = 'nvim-discord-presence',
  cmd = {'/home/vanilla/projects/rust/nvim-discord-rich-presence/target/debug/nvim-discord-rich-presence'},
})

vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = {"*"},
  callback = function()
    vim.lsp.buf_attach_client(0, client) 
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

