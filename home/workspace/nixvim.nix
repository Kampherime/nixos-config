{ pkgs, ... }:


{
    # tba colorscheme n configs 

    programs.nixvim = {
      enable = true;
      defaultEditor = true;

      colorschemes.kanagawa.enable = true;

      viAlias = true;
      vimAlias = true;
      
      plugins = {
        lsp = {
          enable = true;
	  servers = {
	    nixd.enable = true;
	    pylyzer.enable = true;
	  };
        };


	treesitter = {
	  enable = true; 
	  ensureInstalled = [ 
	    "nix" "python" 
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
