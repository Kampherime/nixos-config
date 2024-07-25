{
  programs.nixvim = {
    globals.mapleader = " ";
    keymaps = [
      # Use {} for binds, semicolons for options
      { 
        mode = "n";
	key = "<leader><leader>";
	options.silent = true;
	action = "<cmd>Ex<CR>";
      } 
      ];
    plugins = {
      telescope = {
        keymaps = { 
        "<leader>ex" = "find_files";
        "<leader>gx" = "git_files";
        };	    
      };
    };
  };
}
