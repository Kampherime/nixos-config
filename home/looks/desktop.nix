{ pkgs, ... }:

{ 
    home.packages = with pkgs; [
	cde
    ];
    services.xserver.desktopManager.cde = {
	enable = true; 
    };
}
