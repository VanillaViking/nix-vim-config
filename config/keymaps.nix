{
  globals.mapleader = " ";
  keymaps = [

    # files
    {
      key = "<leader>eb";
      action = ":vsplit ~/.zshrc<CR>";
    }
    {
      key = "<leader>e3";
      action = ":vsplit ~/.config/i3/config<CR>";
    }
    {
      key = "<leader>z";
      action = ":!nohup zathura '<C-r>\"' &<CR>";
    }

    # windows/navigation
    {
      key = "<C-k>";
      action = "<C-w><C-k>";
    }
    {
      key = "<C-j>";
      action = "<C-w><C-j>";
    }
    {
      key = "<C-h>";
      action = "<C-w><C-h>";
    }
    {
      key = "<C-l>";
      action = "<C-w><C-l>";
    }
    {
      key = "<leader>h";
      action = "gT";
    }
    {
      key = "<leader>l";
      action = "gt";
    }

    {
      key = "J";
      action = "<C-d>zz";
    }
    {
      key = "K";
      action = "<C-u>zz";
    }
    {
      key = "L";
      action = "$";
    }
    {
      key = "H";
      action = "_";
    }

    {
      key = "<leader>p";
      action = ":Telescope live_grep<CR>";
    }
    {
      key = "<C-p>";
      action = ":Telescope find_files<CR>";
    }

    {
      key = "<C-f>";
      action = ":Oil<CR>";
    }

    # misc
    {
      key = "S";
      mode = "n";
      action = ":%s//g<Left><Left>";
    }
    {
      key = "<leader>v";
      action = "\"+y";
    }
    {
      key = "<leader><leader>";
      action = "/<?><CR>d3l";
    }

    # LSP
    {
      key = "gs";
      action = ":vsplit | lua vim.lsp.buf.definition()<CR>";
    }
  ];
}
