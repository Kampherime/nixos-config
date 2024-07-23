{inputs, pkgs, ...}:

{
  home.packages = with pkgs; [
    hyprland
    ];

  wayland.windowManager.hyprland = {
    enable = true; 
    settings = { 
      decoration = {
        rounding = 5; 
	};
      # bindings
      bindr = "SUPER, T, exec, pkill rofi || rofi -show drun";
      bind = {
	bind = "SUPER,Q,exec,kitty";
      };
      monitor = "eDP-1,2560x1600@165,0x0,1";
    }; 
  };
}
