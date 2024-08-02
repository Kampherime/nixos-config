{ pkgs, ...}: 

{
  
  programs.hyprland = { 
      enable = true;
    };
  programs.waybar.enable = true; # didn't know where else to put this...? 

  environment.sessionVariables = {

      WLR_NO_HARDWARE_CURSORS = "1";

      NIXOS_OZONE_WL = "1";
  };

  hardware = {
      opengl.enable = true;
      nvidia.modesetting.enable = true;
    };
  users.users.katie = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      firefox
      ];
    };
  nixpkgs.config.allowUnfree = true;
}
