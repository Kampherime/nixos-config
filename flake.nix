{

  description = "Flake...";

  inputs = {
    
    # WM 
    hyperland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";

    # Editor
    nixvim.url = "github:nix-community/nixvim/nixos-24.05";

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05"; 
    
    swww.url = "github:LGFae/swww";

    home-manager = { 
      url = "github:nix-community/home-manager/release-24.05";

      inputs.nixpkgs.follows = "nixpkgs"; 
      };
    };


  outputs = { self, nixpkgs, home-manager, nixvim, ...}@inputs: {
    nixosConfigurations = {
      katie-laptop-4070 = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
	  specialArgs = { inherit inputs; };
	  modules = [
            ./nixos-hosts/katie-laptop-4070/configuration.nix
	    home-manager.nixosModules.home-manager
	    {
              home-manager.useGlobalPkgs = true;
  	      home-manager.useUserPackages = true;
	      home-manager.extraSpecialArgs = { inherit inputs; };
  	      home-manager.users.katie = import ./home;

	    }
          ];
      };
    };
  };
}
