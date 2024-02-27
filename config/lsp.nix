{
  plugins.lsp = {
    enable = true;
    onAttach = ''
      function(client, bufnr)
        vim.api.nvim_set_current_dir(client.config.root_dir)
      end
    '';
    servers = {
      tsserver.enable = true;

      rust-analyzer.enable = true;
      rust-analyzer.installCargo = true;
      rust-analyzer.installRustc = true;

      lua-ls.enable = true;

      clangd.enable = true;
      clangd.rootDir = "function() vim.fn.getcwd() end";
    };

    keymaps.lspBuf = {
      gr = "references";
      gd = "definition";
      gi = "implementation";
      gt = "type_definition";
      ga = "code_action";
    };
  };

  plugins.nvim-cmp = {
    enable = true;
    autoEnableSources = true;
    sources = [
      {name = "nvim_lsp";}
      {name = "path";}
      {name = "buffer";}
    ];
    snippet.expand = "luasnip";
    mapping = {
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<Tab>" = {
        action = ''
          function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end
        '';
        modes = [ "i" "s" ];
      };
    };
  };

  plugins.luasnip.enable = true;
}
