{ pkgs, ... }:

{
  programs.kitty = {
    shellIntegration.enableZshIntegration = true;
    enable = true;
    }; 
}
