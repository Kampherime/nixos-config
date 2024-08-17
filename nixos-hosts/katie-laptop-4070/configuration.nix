# Edit this configuration file to define what should be installed on

# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      # My modules:
      ../../system-config/wm.nix
      #../../system-config/chicago95.nix





      # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  # boot.kernelPackages = pkgs.linuxPackages_latest;
  networking.hostName = "katie-laptop-4070"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Set your time zone.
  time.timeZone = "America/New_York";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n.defaultLocale = "en_US.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  #   useXkbConfig = true; # use xkb.options in tty.
  # };

  # Enable the X11 windowing system.
  services = {
    xserver = { 
      enable = true;
      #windowManager = {
      #  qtile.enable = true;
      #};

    desktopManager ={
	cde.enable = true;
	xfce.enable = true;
      };
    };
    displayManager.sddm = {
      enable = true; 
      wayland.enable = true;
      #theme = smth };
      };
    };

  
  # Nvidia Drivers for xserver
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable; 
  services.xserver.videoDrivers = [ "nvidia" ]; 

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;

  # For flakes
  nix.settings.experimental-features = [ "flakes" "nix-command" ];

  # Configure keymap in X11
  services.xserver.xkb.layout = "us";
  services.xserver.xkb.options = "eurosign:e,caps:escape";

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  hardware.pulseaudio.enable = true;
  #hardware.bluetooth.hsphfpd.enable = true;
  # OR
  #security.rtkit.enable = true;
  #services.pipewire = {
  #  enable = true;
  #  alsa.enable = true;
  #  alsa.support32Bit = true;
  #   pulse.enable = true;

  #  wireplumber.extraConfig.bluetoothEnhancements = {
  #    "monitor.bluez.properties" = {
  #      "bluez5.enable-sbc-xq" = true;
  #      "bluez5.enable-msbc" = true;
  #      "bluez5.enable-hw-volume" = true;
  #      "bluez5.roles" = [ "hsp_hs" "hsp_ag" "hfp_hf" "hfp_ag" ];
  #    };
  #  };
    #    If you want to use JACK applications, uncomment this
    #   jack.enable = true;
  # };

  # use the example session manager (no others are packaged yet so this is enabled by default,
  # no need to redefine it in your config for now)
  #media-session.enable = true;
  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = false;

  # configuring oh my zsh :

  programs.zsh.enable = true;

  #programs = {
  #  zsh = {
  #    enable = true;
  #    syntaxHighlighting.enable = true;
  #    ohMyZsh = {
  #      enable = true;
  # theme = "superjarin";
  # 	plugins = [ "git" "vi-mode" ];
  # 	};
  #   };
  # };


  # Define a user account. Don't forget to set a password with ‘passwd’.

  # List packages installed in system profile. To search, run:
    environment.systemPackages = with pkgs; [
      neovim 
      kitty
      steam
      rofi 
      discord
      zsh
      oh-my-zsh
      lsd
      lm_sensors
      home-manager
      neofetch
      git
      gh
      hyprland
      hwinfo
      swww
      wineWowPackages.stable
      bottles
      clang
      networkmanager
      ghc
      python3
      lynx
      go
      nasm
      emacs
      jdk 
      graalvm-ce
      maven
      vscode
    ];
  programs.steam.enable = true;
  programs.xwayland.enable = true;



  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "24.05"; # Did you read the comment?

}

