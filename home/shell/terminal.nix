{ pkgs, ... }:

{ 
  programs = { 
    kitty = {
      enable = true;
      theme = "Kanagawa";
      font = {
        size = 15.0;
	name = "monospace 11.0";
	}; 
    };
  };
}
