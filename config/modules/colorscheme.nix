{
  config = {
    colorschemes.nord.enable = false;
    colorschemes.gruvbox.enable = false;
    colorschemes.rose-pine = {
      enable = true;
      settings.dark_variant = "main";
      settings.highlight_groups = {
	StatusLine = { 
	  fg = "love"; 
	  bg = "love";
	  blend = 10;
	};
	StatusLineNC = { 
	  fg = "subtle";
	  bg = "surface";
	};
	TelescopeBorder = { fg = "overlay"; bg = "overlay"; };
	TelescopeNormal = { fg = "subtle"; bg = "overlay"; };
	TelescopeSelection = { fg = "text"; bg = "highlight_med"; };
	TelescopeSelectionCaret = { fg = "love"; bg = "highlight_med"; };
	TelescopeMultiSelection = { fg = "text"; bg = "highlight_high"; };

	TelescopeTitle = { fg = "base"; bg = "love"; };
	TelescopePromptTitle = { fg = "base"; bg = "pine"; };
	TelescopePreviewTitle = { fg = "base"; bg = "iris"; };

	TelescopePromptNormal = { fg = "text"; bg = "surface"; };
	TelescopePromptBorder = { fg = "surface"; bg = "surface"; };
      };
    };
  };
}
