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
      "<C-d>" = "cmp.mapping.scroll_docs(-4)";
      "<C-u>" = "cmp.mapping.scroll_docs(4)";
      "<C-Enter>" = "cmp.mapping.confirm({ select = true })";
      "<C-n>" = {
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
      "<C-p>" = {
        action = "cmp.mapping.select_prev_item()";
        modes = [
          "i"
            "s"
        ];
      };
    };
  };

  plugins.luasnip.enable = true;
  plugins.commentary.enable = true;
  plugins.typst-vim.enable = true;
}
