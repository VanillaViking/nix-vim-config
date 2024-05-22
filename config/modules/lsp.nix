{
  plugins.lsp = {
    enable = true;
    servers = {
      tsserver.enable = true;
      tailwindcss.enable = true;

      rust-analyzer.enable = true;
      rust-analyzer.installCargo = true;
      rust-analyzer.installRustc = true;

      lua-ls.enable = true;

      clangd.enable = true;

      typst-lsp.enable = true;

      java-language-server.enable = true;
    };

    keymaps.lspBuf = {
      gr = "references";
      gd = "definition";
      gi = "implementation";
      gt = "type_definition";
      ga = "code_action";
      gn = "rename";
      gq = "hover";
    };

    keymaps.diagnostic = {
      "<leader>j" = "goto_next";
      "<leader>k" = "goto_prev";
    };
  };

  plugins.cmp = {
    enable = true;
    settings.matching.disallow_fuzzy_matching = true;
    autoEnableSources = true;
    settings.sources = [
      {name = "nvim_lsp";}
      {name = "path";}
      {name = "buffer";}
    ];
    settings.snippet.expand = ''
  function(args)
    -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
    -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
  end
    '';
    settings.mapping = {
      "<C-Enter>" = "cmp.mapping.confirm({ select = true })";
      "<C-p>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
      "<C-n>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
    };
  };

  plugins.luasnip.enable = true;
  plugins.commentary.enable = true;
  plugins.typst-vim.enable = true;
}
