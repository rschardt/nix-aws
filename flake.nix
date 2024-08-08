{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nixos-generators = {
      url = "github:nix-community/nixos-generators";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixos-generators,
    ...
  }: {
    packages.x86_64-linux = {
      amazon-image = nixos-generators.nixosGenerate {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          ({...}: { amazonImage.sizeMB = 16 * 1024; })
        ];
        format = "amazon";
      };
    };
  };
}
