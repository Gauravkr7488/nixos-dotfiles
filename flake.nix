{
        description = "My Flake";
        inputs = {
                nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
                home-manager.url = "github:nix-community/home-manager/release-25.05";
                home-manager.inputs.nixpkgs.follows = "nixpkgs";
                nvf = {
                        url = "github:NotAShelf/nvf";
                        inputs.nixpkgs.follows = "nixpkgs";
                };
        };
        outputs = { self, nixpkgs, home-manager, nvf, ...}:
                let 
                lib = nixpkgs.lib;
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
        in
        {
                nixosConfigurations = {
                        nixos = lib.nixosSystem {
                                system = "x86_64-linux";
                                modules = [ ./configuration.nix ];
                        };
                };

                homeConfigurations = {
                        gaurav = home-manager.lib.homeManagerConfiguration {
                                inherit pkgs;
                                modules = [ 
                                        nvf.homeManagerModules.default
                                        ./home.nix
                                ];
                        };
                };
        };
}
