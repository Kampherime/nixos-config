{ pkgs, ...}: 

{
    # tba colorscheme n configs 

    programs.nixvim = {
      enable = true;
      defaultEditor = true;

      # colorschemes.gruvbox.enable = true;
      extraPlugins = [ pkgs.vimPlugins.everforest ];
      colorscheme = "everforest";

      viAlias = true;
      vimAlias = true;
      
      plugins = {
        lsp = {
          enable = true;
	  servers = {
	    nixd.enable = true;
	    pylyzer.enable = true;
	    sourcekit.enable = true;
	    hls.enable = true;
	  };
        };


	treesitter = {
	  enable = true; 
	  ensureInstalled = [ 
	    "nix" "python" "c++" "haskell"
	    ];
	  };
	
	telescope = {
	  enable = true;

	};
      };

      opts = {
	number = true;
	relativenumber = true;

	# everforest-transparent-background = 2;
	# transparent-background = 1;
	shiftwidth = 4;
	};
      #"+y yanking :3 
      clipboard.providers.wl-copy.enable = true;  
    };
}
