{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  imports = [
    ./shell 
    ./looks
    ./workspace
    ];


  home = {
    username = "katie";
    homeDirectory = "/home/katie";



    # DO NOT REMOVE
    stateVersion = "23.11";
  }; 
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
