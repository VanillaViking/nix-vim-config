{lib, config, pkgs, ...}:
{
  plugins = {
    telescope.enable = true;
    web-devicons.enable = true;

    oil.enable = true;
    oil.settings.keymaps = {
      "<leader>y" = "actions.copy_entry_path";
    };

    treesitter.enable = true;
    treesitter.settings.highlight.enable = true;

    fugitive.enable = true;

    undotree.enable = true;

    vim-surround.enable = true;

    sleuth.enable = true;

  };
  
}
