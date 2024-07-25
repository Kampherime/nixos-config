{inputs, pkgs, ...}:

{
  home.packages = with pkgs; [
    hyprland
    hyprshot
    ];

  wayland.windowManager.hyprland = {
    enable = true; 
    xwayland.enable = true;
    settings = { 
    # decoration settings for hyprland
      decoration = {
        # corners
        rounding = 5; 
	};
 


      # on hyprland startup
      exec-once = [ 
	# "waybar"
	]; 

      # bindings
      bindr = "SUPER, R, exec, pkill rofi || rofi -show drun";
      bind = [
        # SUPER = win key 
	"SUPER,Q,exec,kitty"
	"SUPER,W,killactive,"
	"SUPER,P,exec,hyprshot -m region --clipboard-only"
	# Need a SC program 

	# Switching between windows

	"SUPER, 1, workspace, 1"
	"SUPER, 2, workspace, 2"
	"SUPER, 3, workspace, 3"
	"SUPER, 4, workspace, 4"
	"SUPER, 5, workspace, 5"
	"SUPER, 6, workspace, 6"
	"SUPER, 7, workspace, 7"
	"SUPER, 8, workspace, 8"
	"SUPER, 9, workspace, 9"
	"SUPER, 0, workspace, 10"
        
        # Same thing but it switches
	"SUPER SHIFT, 1, movetoworkspacesilent, 1" # movetoworkspacesilent
        "SUPER SHIFT, 2, movetoworkspacesilent, 2"
        "SUPER SHIFT, 3, movetoworkspacesilent, 3"
        "SUPER SHIFT, 4, movetoworkspacesilent, 4"
        "SUPER SHIFT, 5, movetoworkspacesilent, 5"
        "SUPER SHIFT, 6, movetoworkspacesilent, 6"
        "SUPER SHIFT, 7, movetoworkspacesilent, 7"
        "SUPER SHIFT, 8, movetoworkspacesilent, 8"
        "SUPER SHIFT, 9, movetoworkspacesilent, 9"
        "SUPER SHIFT, 0, movetoworkspacesilent, 10"
        "SUPER CTRL, c, movetoworkspace, empty"
	];
      monitor = [
		 "eDP-1,2560x1600@165,0x0,1"
                 "Unknown-1,disable"
		];
    }; 
  };
}
