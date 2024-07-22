{ pkgs, ... }:

{ 
  programs = { 
    kitty = {
      enable = true;
      theme = "OneDark-Pro";
      font = {
        size = 15.0;
	name = "monospace 11.0";
	}; 
    };
  };
}
