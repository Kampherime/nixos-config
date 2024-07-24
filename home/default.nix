{ inputs, config, pkgs, ... }:

let
  neovimconfig = import ./workspace;
  nvim = inputs.nixvim.legacyPackages.x86_64-linux.makeNixvimWithModule {
    inherit pkgs;
    module = neovimconfig;
  };
in 
{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  imports = [
    ./shell 
    ./looks
    ./workspace
    inputs.nixvim.homeManagerModules.nixvim
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
