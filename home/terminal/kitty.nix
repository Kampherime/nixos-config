{ pkgs, ... }: 


{
  programs.kitty = {
    enable = true;
    environment = {
      background_opacity = "0.5";
      font_size = "15.0";
      };
    theme = "OneDark-Pro";

  };
}
