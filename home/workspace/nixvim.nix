{ pkgs, ...}: 

{
    # tba colorscheme n configs 

    programs.nixvim = {
      enable = true;
      defaultEditor = true;

      colorschemes.kanagawa = {
	enable = true;
	settings = {
	    transparent = true;
	    colors = {
		theme = {
		    all = {
			ui = {
			    bg_gutter = "none";
			    };
			};
		    };
		};
	    };
	};
      colorscheme = "kanagawa-dragon";
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
	    gopls.enable = true;
	  };
        };


	treesitter = {
	  enable = true; 
	  ensureInstalled = [ 
	    "nix" "python" "c++" "haskell" "golang"
	    ];
	  };
	
	telescope = {
	  enable = true;

	};
      };

      opts = {
	number = true;
	relativenumber = true;
	shiftwidth = 4;
	};
      #"+y yanking :3 
      clipboard.providers.wl-copy.enable = true;  
    };
}
