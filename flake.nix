{
  description = "Flake...";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05"; 

    home-manager = { 
      url = "github:nix-community/home-manager/release-24.05";

      inputs.nixpkgs.follows = "nixpkgs"; 
      };
    };


  outputs = { self, nixpkgs, home-manager, ...}@inputs: {
    nixosConfigurations = {
      katie-laptop-4070 = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./nixos-hosts/katie-laptop-4070/configuration.nix

	    home-manager.nixosModules.home-manager
	    {
            home-manager.useGlobalPkgs = true;
	    home-manager.useUserPackages = true;
	    home-manager.users.katie = import ./home;
	    }
          ];
      };
    };
  };
}
